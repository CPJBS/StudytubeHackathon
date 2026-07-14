#!/usr/bin/env bash
# Build the participant Assets pack for the GTM AI Workshop.
# One identical zip for every team: LearnLoop world + brief folders,
# mentor material excluded, hidden mentor labels (HTML comments) stripped.
set -euo pipefail

KIT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(dirname "$KIT_DIR")"
SRC="$REPO_DIR/learnloop"
DIST="$KIT_DIR/dist"
OUT="$DIST/learnloop-assets"

rm -rf "$DIST"
mkdir -p "$OUT"

# 1. Copy the LearnLoop world, excluding mentor material and OS junk
rsync -a \
  --exclude 'mentor-kit/' \
  --exclude '.DS_Store' \
  "$SRC/" "$OUT/"

# 2. Add the kit layer: CLAUDE.md + all three prompt packs
cp "$KIT_DIR/CLAUDE.md" "$OUT/CLAUDE.md"
cp "$KIT_DIR"/prompt-pack-brief-0*.md "$OUT/"

# 3. Strip ALL HTML comments from every markdown file (hidden mentor labels live there)
find "$OUT" -name '*.md' -print0 | while IFS= read -r -d '' f; do
  perl -0pi -e 's/<!--.*?-->\n?//gs' "$f"
done

# 4. Verify participant-safety
fail=0
if [ -d "$OUT/mentor-kit" ]; then echo "FAIL: mentor-kit present"; fail=1; fi
if [ -n "$(find "$OUT" -name 'contradictions-and-redherrings.md' -o -name 'kickoff-presentation-brief.md' -o -name 'close-the-loop-runbook.md' -o -name 'mentor-cards.md')" ]; then echo "FAIL: mentor file present in pack"; fail=1; fi
if grep -rq "voice status" "$OUT"; then echo "FAIL: hidden labels survived"; grep -rl "voice status" "$OUT"; fail=1; fi
if grep -rqi "mentor-only\|MENTOR ONLY" "$OUT"; then echo "FAIL: mentor-only strings found"; grep -rli "mentor-only" "$OUT"; fail=1; fi
# The T-45 merge is an unannounced curveball — participant docs must never mention it
if grep -rqiE "reconnect|curveball" "$OUT"; then echo "FAIL: reconnect/curveball leak"; grep -rliE "reconnect|curveball" "$OUT"; fail=1; fi
for d in brief-01-signal-room brief-02-brand-voice brief-03-account-penetration; do
  [ -d "$OUT/$d" ] || { echo "FAIL: missing folder $d"; fail=1; }
done
[ $fail -eq 1 ] && exit 1

# 5. Zip
cd "$DIST"
zip -qr learnloop-assets.zip learnloop-assets
echo "OK: $DIST/learnloop-assets.zip"
echo "Contents: $(find learnloop-assets -type f | wc -l | tr -d ' ') files"
find learnloop-assets -type f | sort
