#!/usr/bin/env python3
import os
import sys
import struct

SAVE_DIR = "/sdcard/GOW-Betra/saves"
SAVE_FILE = os.path.join(SAVE_DIR, "rec2.bin")

def ensure_save():
    os.makedirs(SAVE_DIR, exist_ok=True)
    if not os.path.exists(SAVE_FILE) or os.path.getsize(SAVE_FILE) < 76:
        # Create default 76-byte save
        data = bytearray(76)
        # default combos
        struct.pack_into(">i", data, 8, 3)   # bladesComboLength
        struct.pack_into(">i", data, 12, 2)  # magicAComboLength
        with open(SAVE_FILE, "wb") as f:
            f.write(data)
    with open(SAVE_FILE, "rb") as f:
        return bytearray(f.read())

def write_save(data):
    with open(SAVE_FILE, "wb") as f:
        f.write(data)
    print("💾 Save file berhasil diupdate di /sdcard/GOW-Betra/saves/rec2.bin!")

def show_status():
    data = ensure_save()
    vals = [struct.unpack(">i", data[i:i+4])[0] for i in range(0, min(len(data), 76), 4)]
    labels = [
        "Blades of Chaos Level", "Magic A (Medusa) Level", "Blades Combo Length", "Magic A Combo Length",
        "Magic B Level", "Magic C Level", "Health Chests (Gorgon Eyes)", "Magic Chests (Phoenix Feathers)",
        "Upgrade Points (Red Orbs)", "Progress C", "Progress D", "Progress A",
        "Progress B", "Furthest Level (Stages Unlocked)", "Total Orbs Collected", "Orb Budget",
        "Chest Flags", "Best Kill Count"
    ]
    print("\n=== STATUS DATA SAVE GOW: BETRAYAL ===")
    for l, v in zip(labels, vals):
        print(f"  {l:32}: {v}")
    print("======================================\n")

def apply_cheat(all_max=True):
    data = ensure_save()
    # Backup original
    backup_file = SAVE_FILE + ".bak"
    if not os.path.exists(backup_file):
        with open(backup_file, "wb") as f:
            f.write(data)
        print(f"📦 Backup save dibuat di {backup_file}")

    # Cheats:
    struct.pack_into(">i", data, 0, 3)       # Blades Level 3 (Max)
    struct.pack_into(">i", data, 4, 3)       # Magic A Level 3 (Max)
    struct.pack_into(">i", data, 8, 5)       # Blades Combo Length (Max)
    struct.pack_into(">i", data, 12, 4)      # Magic A Combo Length (Max)
    struct.pack_into(">i", data, 16, 3)      # Magic B Level 3 (Max)
    struct.pack_into(">i", data, 20, 3)      # Magic C Level 3 (Max)
    struct.pack_into(">i", data, 24, 6)       # Health Chests Found (Max HP Bar)
    struct.pack_into(">i", data, 28, 6)       # Magic Chests Found (Max MP Bar)
    struct.pack_into(">i", data, 32, 999999)  # 999,999 Red Orbs!
    struct.pack_into(">i", data, 52, 9)       # Unlock Stages 1 - 10!
    struct.pack_into(">i", data, 56, 999999)  # Total Orbs Collected
    struct.pack_into(">i", data, 68, 9999)    # Best Kill Count

    write_save(data)
    print("\n⚡ CHEAT ENGINE AKTIF:")
    print("  ✅ 999.999 Red Orbs")
    print("  ✅ Max Blades of Chaos (Level 3 + Max Combos)")
    print("  ✅ Max Magic A, B, C (Medusa & All Spells)")
    print("  ✅ Max Health Bar (Gorgon Eyes)")
    print("  ✅ Max Magic Bar (Phoenix Feathers)")
    print("  ✅ Unlock All 10 Stages / Level Select")
    print("  ✅ Best Kill Count 9999\n")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "status":
        show_status()
    else:
        apply_cheat()
        show_status()
