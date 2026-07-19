#!/usr/bin/env bash
set -euo pipefail

# 默认 Flutter iOS 构建产物
APP_PATH="${1:-build/ios/iphoneos/Runner.app}"

# IPA 输出目录
OUT_DIR="build/ios"

# IPA 名称，默认用 app 名
APP_NAME="$(basename "$APP_PATH" .app)"
IPA_PATH="$OUT_DIR/${APP_NAME}.ipa"

if [ ! -d "$APP_PATH" ]; then
  echo "Error: app not found: $APP_PATH"
  echo "Usage: $0 [path/to/Runner.app]"
  exit 1
fi

mkdir -p "$OUT_DIR"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

mkdir -p "$TMP_DIR/Payload"
cp -R "$APP_PATH" "$TMP_DIR/Payload/"

# 删除旧 ipa
rm -f "$IPA_PATH"

# 打包为 ipa
(
  cd "$TMP_DIR"
  /usr/bin/zip -qry "$OLDPWD/$IPA_PATH" Payload
)

echo "IPA created:"
echo "$IPA_PATH"
