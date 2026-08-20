#!/usr/bin/env bash
# Build the standalone public-health Claude.ai skill zips into dist/.
#
#   ./build-skills.sh                 # rebuild all three skills + the bundle
#   ./build-skills.sh writer          # rebuild one (deep-research | writer | reviewer)
#   ./build-skills.sh --no-bundle     # skip the combined bundle zip
#
# Each skill zip contains its folder at the top level (public-health-*/SKILL.md),
# which is the layout Claude.ai's skill uploader expects. Upload one zip per
# skill; do not unzip them first.
#
# Bash 3.2 compatible. Uses `zip` when available, otherwise falls back to
# Python's zipfile so this works on minimal images and Windows/Git Bash.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DIST="$ROOT/dist"

SKILLS="public-health-deep-research public-health-paper-writer public-health-paper-reviewer"
BUNDLE="public-health-skills-bundle.zip"
EXCLUDES=".DS_Store __MACOSX .git .gitignore __pycache__ .pytest_cache"

make_bundle=1
selected=""

for arg in "$@"; do
  case "$arg" in
    --no-bundle) make_bundle=0 ;;
    -h|--help)   sed -n '2,14p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
    deep-research|deep|research) selected="public-health-deep-research" ;;
    writer|paper-writer)         selected="public-health-paper-writer" ;;
    reviewer|paper-reviewer)     selected="public-health-paper-reviewer" ;;
    public-health-*)             selected="$arg" ;;
    *) echo "build-skills.sh: unknown argument '$arg' (try --help)" >&2; exit 2 ;;
  esac
done

[ -n "$selected" ] && SKILLS="$selected"
[ -n "$selected" ] && make_bundle=0

# --- zip driver -------------------------------------------------------------
have_zip=0
command -v zip >/dev/null 2>&1 && have_zip=1

# zip_dir <output.zip> <dir-name>   (run with cwd = parent of dir-name)
zip_dir() {
  out="$1"; dir="$2"
  rm -f "$out"
  if [ "$have_zip" -eq 1 ]; then
    args=""
    for e in $EXCLUDES; do args="$args -x *$e* "; done
    # shellcheck disable=SC2086
    zip -rqX "$out" "$dir" $args
  else
    ARS_OUT="$out" ARS_DIR="$dir" ARS_EXCLUDES="$EXCLUDES" python3 - <<'PY'
import os, zipfile
out, top = os.environ["ARS_OUT"], os.environ["ARS_DIR"]
skip = set(os.environ["ARS_EXCLUDES"].split())
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for base, dirs, files in os.walk(top):
        dirs[:] = sorted(d for d in dirs if d not in skip)
        for f in sorted(files):
            if f in skip or f.endswith((".pyc", ".pyo")):
                continue
            z.write(os.path.join(base, f))
PY
  fi
}

# zip_files <output.zip> <file>...
zip_files() {
  out="$1"; shift
  rm -f "$out"
  if [ "$have_zip" -eq 1 ]; then
    zip -qX "$out" "$@"
  else
    ARS_OUT="$out" ARS_FILES="$*" python3 - <<'PY'
import os, zipfile
out = os.environ["ARS_OUT"]
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for f in os.environ["ARS_FILES"].split():
        z.write(f)
PY
  fi
}

human() { # bytes -> KB/MB
  awk -v b="$1" 'BEGIN{ if (b>1048576) printf "%.1f MB", b/1048576; else printf "%.0f KB", b/1024 }'
}

# --- build ------------------------------------------------------------------
cd "$DIST"
built=""

for skill in $SKILLS; do
  if [ ! -d "$skill" ]; then
    echo "build-skills.sh: missing skill directory dist/$skill" >&2; exit 1
  fi
  if [ ! -f "$skill/SKILL.md" ]; then
    echo "build-skills.sh: dist/$skill has no SKILL.md — not a valid skill" >&2; exit 1
  fi
  zip_dir "$skill.zip" "$skill"
  built="$built $skill"
done

if [ "$make_bundle" -eq 1 ]; then
  zip_files "$BUNDLE" README.md \
    public-health-deep-research.zip \
    public-health-paper-writer.zip \
    public-health-paper-reviewer.zip
fi

# --- report -----------------------------------------------------------------
printf '\nBuilt in dist/ (%s):\n\n' "$([ "$have_zip" -eq 1 ] && echo 'zip' || echo 'python zipfile')"
for skill in $built; do
  ver=$(sed -n 's/^  version: "\(.*\)"/\1/p' "$skill/SKILL.md" | head -1)
  size=$(wc -c < "$skill.zip" | tr -d ' ')
  # count files only, so `zip` (which stores directory entries) and the
  # python fallback (which does not) report the same number
  files=$(unzip -l "$skill.zip" 2>/dev/null | awk '$1 ~ /^[0-9]+$/ && $NF !~ /\/$/ {n++} END{print n+0}')
  printf '  %-32s v%-12s %8s  %s files\n' "$skill.zip" "${ver:-?}" "$(human "$size")" "${files:-?}"
done
if [ "$make_bundle" -eq 1 ]; then
  printf '  %-32s %-13s %8s\n' "$BUNDLE" "(all three)" "$(human "$(wc -c < "$BUNDLE" | tr -d ' ')")"
fi

printf '\nUpload one skill zip per skill at Claude.ai -> Settings -> Capabilities -> Skills -> Upload skill.\n'
