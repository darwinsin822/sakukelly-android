#!/usr/bin/env python3
"""
boost_volume.py — Potenciador de Volumen de Audio para SakuKelly Music
======================================================================
Este script aumenta el volumen y ganancia de canciones de audio de forma limpia y profesional:
- Compatible con formatos: .mp3, .flac, .m4a, .aac, .wav, .ogg, .opus
- Permite aumentar ganancia en dB (por defecto: +6 dB)
- Modo normalización dinámica EBU R128 (loudnorm) para evitar distorsiones
- Preserva metadatos, tags y carátulas originales
- Puede procesar un archivo individual o toda una carpeta/biblioteca de canciones

Uso:
  python3 boost_volume.py mi_cancion.mp3
  python3 boost_volume.py /ruta/a/mi_musica/ --gain 6.0
  python3 boost_volume.py /ruta/a/mi_musica/ --loudnorm
  python3 boost_volume.py mi_cancion.flac --output boosted_song.flac
"""

import os
import sys
import argparse
import subprocess
import shutil
from pathlib import Path

SUPPORTED_EXTENSIONS = {'.mp3', '.flac', '.m4a', '.aac', '.wav', '.ogg', '.opus', '.wma'}

def check_ffmpeg():
    if not shutil.which("ffmpeg"):
        print("❌ Error: ffmpeg no está instalado en el sistema. Instálalo con: sudo apt install ffmpeg")
        sys.exit(1)

def boost_file(input_path: Path, output_path: Path, gain_db: float, use_loudnorm: bool = False, in_place: bool = False):
    input_str = str(input_path.resolve())
    temp_output = output_path.with_suffix(".tmp" + input_path.suffix)
    output_str = str(output_path.resolve())

    # Configurar filtro de audio
    if use_loudnorm:
        # Normalización profesional EBU R128 (-14 LUFS objetivo estándar para música streaming)
        audio_filter = "loudnorm=I=-14:LRA=7:TP=-1.5"
        desc = "Normalización EBU R128 (-14 LUFS)"
    else:
        # Ganancia fija en decibelios (ej. +6dB) con limitador suave para evitar clipping
        audio_filter = f"volume={gain_db}dB,alimiter=limit=0.98:attack=5:release=50"
        desc = f"Ganancia +{gain_db} dB (con soft-limiter anti-clipping)"

    cmd = [
        "ffmpeg",
        "-y",
        "-i", input_str,
        "-af", audio_filter,
        "-map_metadata", "0",
        "-id3v2_version", "3",
    ]

    # Mantener el codec adecuado según la extensión
    ext = input_path.suffix.lower()
    if ext == '.mp3':
        cmd.extend(["-c:a", "libmp3lame", "-q:a", "0"])
    elif ext == '.flac':
        cmd.extend(["-c:a", "flac", "-compression_level", "8"])
    elif ext in ('.m4a', '.aac'):
        cmd.extend(["-c:a", "aac", "-b:a", "320k"])
    elif ext == '.ogg':
        cmd.extend(["-c:a", "libvorbis", "-q:a", "7"])
    elif ext == '.opus':
        cmd.extend(["-c:a", "libopus", "-b:a", "256k"])
    else:
        cmd.extend(["-c:a", "copy"])

    cmd.append(str(temp_output))

    try:
        result = subprocess.run(cmd, stdout=subprocess.DEVNULL, stderr=subprocess.PIPE, text=True)
        if result.returncode != 0:
            print(f"  ❌ Fallo al procesar {input_path.name}: {result.stderr.splitlines()[-1] if result.stderr else 'Error desconocido'}")
            if temp_output.exists():
                temp_output.unlink()
            return False

        if in_place:
            temp_output.replace(input_path)
            print(f"  ✅ {input_path.name} -> ¡Volumen elevado ({desc})!")
        else:
            temp_output.replace(output_path)
            print(f"  ✅ {input_path.name} -> Guardado en: {output_path.name} ({desc})")
        return True

    except Exception as e:
        print(f"  ❌ Error inesperado con {input_path.name}: {e}")
        if temp_output.exists():
            temp_output.unlink()
        return False

def main():
    parser = argparse.ArgumentParser(description="Potenciador de Volumen de Canciones para SakuKelly Music")
    parser.add_argument("path", help="Ruta del archivo de audio o carpeta con canciones")
    parser.add_argument("-g", "--gain", type=float, default=6.0, help="Ganancia en decibelios a incrementar (por defecto: +6.0 dB)")
    parser.add_argument("-l", "--loudnorm", action="store_true", help="Usar normalización de sonoridad profesional EBU R128 (-14 LUFS)")
    parser.add_argument("-o", "--output", help="Ruta de salida (archivo o carpeta). Si se omite y es carpeta, procesa en subcarpeta 'boosted'")
    parser.add_argument("-i", "--inplace", action="store_true", help="Sobrescribir el archivo original directamente")

    args = parser.parse_args()
    check_ffmpeg()

    target_path = Path(args.path)
    if not target_path.exists():
        print(f"❌ La ruta no existe: {target_path}")
        sys.exit(1)

    print("=" * 65)
    print("🎵 SAKUKELLY MUSIC — POTENCIADOR DE VOLUMEN DE AUDIO 🔊")
    print("=" * 65)

    if target_path.is_file():
        if target_path.suffix.lower() not in SUPPORTED_EXTENSIONS:
            print(f"⚠️ Extensión no soportada: {target_path.suffix}")
            sys.exit(1)

        if args.inplace:
            out_file = target_path
        elif args.output:
            out_file = Path(args.output)
        else:
            out_file = target_path.with_stem(target_path.stem + "_boosted")

        print(f"Procesando archivo: {target_path.name}")
        boost_file(target_path, out_file, args.gain, args.loudnorm, args.inplace)

    elif target_path.is_dir():
        files = [p for p in target_path.rglob("*") if p.suffix.lower() in SUPPORTED_EXTENSIONS]
        if not files:
            print(f"⚠️ No se encontraron archivos de audio soportados en: {target_path}")
            sys.exit(0)

        print(f"📁 Se encontraron {len(files)} canción(es) en: {target_path}")
        
        if args.inplace:
            out_dir = target_path
        elif args.output:
            out_dir = Path(args.output)
            out_dir.mkdir(parents=True, exist_ok=True)
        else:
            out_dir = target_path / "boosted"
            out_dir.mkdir(parents=True, exist_ok=True)

        success = 0
        for idx, f in enumerate(files, 1):
            if args.inplace:
                dest = f
            else:
                rel = f.relative_to(target_path)
                dest = out_dir / rel
                dest.parent.mkdir(parents=True, exist_ok=True)

            print(f"[{idx}/{len(files)}]", end="")
            if boost_file(f, dest, args.gain, args.loudnorm, args.inplace):
                success += 1

        print("-" * 65)
        print(f"🎉 Proceso completado: {success}/{len(files)} canciones amplificadas con éxito.")
        if not args.inplace:
            print(f"📂 Canciones guardadas en: {out_dir.resolve()}")
    print("=" * 65)

if __name__ == "__main__":
    main()
