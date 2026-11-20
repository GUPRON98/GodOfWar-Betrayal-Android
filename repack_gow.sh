#!/data/data/com.termux/files/usr/bin/bash
set -e

WORK_DIR="/data/data/com.termux/files/home/gow_native_mod"
NEW_DEX="/data/data/com.termux/files/home/test_sdl_build/out/classes.dex"
OUT_UNALIGNED="/data/data/com.termux/files/home/gow_unaligned.apk"
OUT_ALIGNED="/data/data/com.termux/files/home/gow_aligned.apk"
KEYSTORE="$HOME/FlappySawit/flappysawit.keystore"

echo "🔄 [1/4] Mengganti classes3.dex dengan versi custom GowTouchOverlay & Cheat Engine..."
cp -f "$NEW_DEX" "$WORK_DIR/classes3.dex"

echo "📦 [2/4] Mengemas file zip APK via python (.so sebagai Stored)..."
rm -f "$OUT_UNALIGNED" "$OUT_ALIGNED"
cd "$WORK_DIR"
rm -rf META-INF

python3 -c "
import zipfile, os

uncompressed_exts = {'.so', '.arsc'}

with zipfile.ZipFile('$OUT_UNALIGNED', 'w') as z:
    for root, dirs, files in os.walk('.'):
        for file in files:
            p = os.path.join(root, file)
            arcname = os.path.relpath(p, '.')
            ext = os.path.splitext(file)[1].lower()
            if ext in uncompressed_exts:
                z.write(p, arcname, compress_type=zipfile.ZIP_STORED)
            else:
                z.write(p, arcname, compress_type=zipfile.ZIP_DEFLATED)
"

echo "📐 [3/4] Zipalign APK (4-byte alignment)..."
zipalign -v -p 4 "$OUT_UNALIGNED" "$OUT_ALIGNED" > /dev/null

echo "🔐 [4/4] Signing APK..."
apksigner sign \
  --ks "$KEYSTORE" \
  --ks-key-alias flappysawit \
  --ks-pass pass:sawit123 \
  --key-pass pass:sawit123 \
  --out /sdcard/ai/GodOfWar.apk \
  "$OUT_ALIGNED"

cp -f /sdcard/ai/GodOfWar.apk /sdcard/Download/GodOfWar.apk
echo "🎉 Berhasil dipack dan disign di /sdcard/ai/GodOfWar.apk dan /sdcard/Download/GodOfWar.apk"
ls -lh /sdcard/ai/GodOfWar.apk
