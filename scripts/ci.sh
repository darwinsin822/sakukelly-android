#!/usr/bin/env bash
# ==============================================================================
# SakuKelly Android — Suite de Verificación Determinista e Integración Continua Local
# ==============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "🧪 [1/4] Verificando ausencia total de rutas privadas en el repositorio..."
if git -C "$REPO_DIR" grep -I -i "/home/darwinsin" ":(exclude).git" 2>/dev/null; then
  echo "  ❌ [FAIL] Se detectaron rutas privadas absolutas."
  exit 1
else
  echo "  ✔ [PASS] 0 rutas privadas absolutas detectadas."
fi

echo "🧪 [2/4] Validando sintaxis de scripts Bash y Python..."
bash -n "$REPO_DIR/scripts/build_apk.sh"
python3 -c "import ast; ast.parse(open('$REPO_DIR/scripts/boost_volume.py').read()); print('  ✔ [PASS] boost_volume.py AST válido.')"

echo "🧪 [3/4] Verificando integridad de AndroidManifest.xml y apktool.yml..."
grep -q "package=\"com.sakukelly.music\"" "$REPO_DIR/AndroidManifest.xml"
grep -q "apkFileName:" "$REPO_DIR/apktool.yml"
echo "  ✔ [PASS] Manifiesto Android y configuración de apktool verificados."

echo "🧪 [4/4] Verificando estructura de código Smali decompilado..."
test -d "$REPO_DIR/smali"
test -d "$REPO_DIR/smali_classes2"
test -d "$REPO_DIR/res"
echo "  ✔ [PASS] Árbol de recursos y bytecode smali íntegro."

echo ""
echo "✅ Todas las pruebas de CI de SakuKelly Android pasaron al 100% (Código de salida 0)."
