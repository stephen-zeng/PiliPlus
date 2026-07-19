#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 input.ipa [output.ipa]"
  exit 1
fi

IPA_PATH="$1"
OUT_PATH="${2:-build/ios/$(basename "${IPA_PATH%.ipa}")-no-liquid-glass.ipa}"

if [ ! -f "$IPA_PATH" ]; then
  echo "Error: IPA not found: $IPA_PATH"
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

mkdir -p "$(dirname "$OUT_PATH")"

echo "[1/5] Unzipping IPA..."
unzip -q "$IPA_PATH" -d "$TMP_DIR"

APP_PATH="$(find "$TMP_DIR/Payload" -maxdepth 1 -type d -name "*.app" | head -n 1)"

if [ -z "$APP_PATH" ] || [ ! -d "$APP_PATH" ]; then
  echo "Error: Cannot find Payload/*.app"
  exit 1
fi

PLIST="$APP_PATH/Info.plist"

if [ ! -f "$PLIST" ]; then
  echo "Error: Cannot find Info.plist"
  exit 1
fi

echo "[2/5] Patching Info.plist..."
/usr/libexec/PlistBuddy -c "Set :UIDesignRequiresCompatibility true" "$PLIST" 2>/dev/null \
  || /usr/libexec/PlistBuddy -c "Add :UIDesignRequiresCompatibility bool true" "$PLIST"

echo "[3/5] Verifying..."
/usr/libexec/PlistBuddy -c "Print :UIDesignRequiresCompatibility" "$PLIST"

echo "[4/5] Removing old code signatures..."
find "$TMP_DIR/Payload" -name "_CodeSignature" -type d -prune -exec rm -rf {} +
find "$TMP_DIR/Payload" -name "CodeResources" -delete 2>/dev/null || true

echo "[5/5] Repacking IPA..."
rm -f "$OUT_PATH"
(
  cd "$TMP_DIR"
  zip -qry "$OLDPWD/$OUT_PATH" Payload
)

echo
echo "Done:"
echo "$OUT_PATH"
echo
echo "Important: this IPA is modified and unsigned/invalid-signed."
echo "You still need to re-sign it before installing."
