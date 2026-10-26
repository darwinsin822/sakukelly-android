#!/usr/bin/env bash
# build_apk.sh - Compilación de APK usando Apktool
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="${REPO_DIR}/dist"
mkdir -p "$OUTPUT_DIR"

echo "=== Compilando SakuKelly Music APK con Apktool ==="
apktool b "$REPO_DIR" -o "${OUTPUT_DIR}/SakuKelly-v0.0.30-unsigned.apk"
echo "✓ APK generado exitosamente en: ${OUTPUT_DIR}/SakuKelly-v0.0.30-unsigned.apk"
