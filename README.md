# 📱 SakuKelly Music para Android (v0.0.30)

[![Latest Release](https://img.shields.io/github/v/release/darwinsin822/sakukelly-android?style=for-the-badge&labelColor=0d1117)](https://github.com/darwinsin822/sakukelly-android/releases)
[![License](https://img.shields.io/github/license/darwinsin822/sakukelly-android?style=for-the-badge&labelColor=0d1117)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android_8.0+_(API_26+)-brightgreen.svg?style=for-the-badge&labelColor=0d1117)](https://github.com/darwinsin822/sakukelly-android)

Reproductor de música avanzado para dispositivos Android con arquitectura moderna en Jetpack Compose, soporte de reproducción en segundo plano vía Media3 MediaSession, motor de sonido DSP con ecualizador paramétrico, soporte de letras sincronizadas y widget interactivo de escritorio.

---

## 📥 Descarga Directa del APK

Puedes descargar el archivo APK listo para instalar en tu teléfono móvil directamente desde la sección de lanzamientos:

👉 **[Descargar SakuKelly-v0.0.30.apk (Releases)](https://github.com/darwinsin822/sakukelly-android/releases)**

---

## ✨ Características Principales

- **Interfaz Moderna en Jetpack Compose**: Diseño visual fluido, modo oscuro y Material Design 3.
- **Reproducción Continua en Segundo Plano**: Soporte nativo para `androidx.media3` con integración completa en la barra de notificaciones del sistema.
- **Widget de Escritorio**: Control rápido de reproducción desde la pantalla de inicio de Android.
- **Letras Sincronizadas**: Visualización en tiempo real de letras en formato LRC.
- **Potenciador de Volumen (Script DSP)**: Incluye script auxiliar en `scripts/boost_volume.py` para normalizar y potenciar canciones en dB con limitador suave anti-clipping.

---

## 🛠️ Compilación y Modificación

Este proyecto utiliza el estándar abierto de ingeniería inversa y empaquetado de APKs con **Apktool**:

### Requisitos
- Java 17 o superior (`openjdk-17-jdk`)
- `apktool` (v2.10+)
- `apksigner` / `zipalign` (Android SDK Build Tools)

### Compilar el APK:
```bash
./scripts/build_apk.sh
```

### Firmar el APK para instalar en el móvil:
```bash
# Alinear APK
zipalign -p -f -v 4 dist/SakuKelly-v0.0.30-unsigned.apk dist/SakuKelly-v0.0.30-aligned.apk

# Firmar con keystore (ejemplo con debug keystore)
apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android dist/SakuKelly-v0.0.30-aligned.apk
```

---

## 📄 Licencia

Distribuido bajo la Licencia MIT. Consulta el archivo `LICENSE` para más información.
