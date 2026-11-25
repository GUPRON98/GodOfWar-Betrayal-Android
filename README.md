# ⚔️ God of War: Betrayal — Android Port + Spartan Controller & Cheat Engine

[![Platform](https://img.shields.io/badge/Platform-Android%205.0%E2%80%9316-3DDC84.svg?logo=android&logoColor=white)](https://github.com/GUPRON98/GodOfWar-Betrayal-Android)
[![SDK](https://img.shields.io/badge/SDK-min%2021%20%7C%20target%2034-orange.svg)](https://github.com/GUPRON98/GodOfWar-Betrayal-Android)

Port Android dari **God of War: Betrayal** dengan tampilan **Fullscreen Landscape**, **Custom Spartan Controller** (Obsidian Crimson & Burnished Gold + Icon Tematik), **Built-in Cheat Engine (`⚡ CHEAT`)**, dan perbaikan bug crash / resource loader.

---

## 📸 Screenshots

| Main Menu & Spartan Controller | Gameplay & In-Game Cheat Engine |
| :---: | :---: |
| ![Main Menu](screenshots/menu.png) | ![Gameplay & Cheat](screenshots/gameplay_cheat.png) |

---

## ⚡ Fitur Utama

- 📱 **Fullscreen Landscape**: Area game (`rectGame`) mengisi penuh layar perangkat tanpa bar hitam di samping.
- 🛡️ **Spartan-Themed Controller + Custom Icons**:
  - Warna **Obsidian Crimson & Burnished Gold**.
  - Icon tematik: `Ω` (D-Pad Center), `⚔ ATK`, `🔥 PWR`, `⏫ JUMP`, `↻ ROLL`, `🔱 MAGIC`, `⚙ SUB`, `☰ MENU`, `↩ BACK`, dan `⚡ CHEAT`.
- ⚡ **Built-in Cheat Engine (`⚡ CHEAT`)**:
  - 🛡️ **Godmode**
  - 💖 **Darah Penuh (Max HP)**
  - ⚡ **Sihir Penuh (Max Magic)**
  - 🔴 **999.999 Red Orbs**
  - ⚔️ **Max Stat & Senjata Dewa**
  - 🗺️ **Buka Semua Stage (Stage 1–10)**
  - 💀 **One Hit Kill / Bunuh Semua Musuh**
- 🐛 **Bug & Crash Fixes**:
  - Perbaikan `ResourceLoader.open(...)` di `d.smali` dan `e.smali` agar seluruh arsip `/RP*` terbaca dari `assets/` saat masuk gameplay.
  - Penambahan null & bounds guard pada `d.b([SII)I`, `d.b(II)Z`, `d.c(I)[B`, `d.p(I)I`, dan `d.a(...)` untuk mencegah force close.

---

## 📦 Download APK

Unduh langsung file APK siap pasang:
- **[GodOfWar.apk](GodOfWar.apk)** (`minSdkVersion 21`, `targetSdkVersion 34`, pure Java/Smali tanpa native `.so`, kompatibel hingga Android 15/16)

---

## 🛠️ Build dari Source (Termux / Linux)

```bash
apktool b . -o unaligned.apk
zipalign -f 4 unaligned.apk GodOfWar.apk
apksigner sign --ks gow.keystore --ks-key-alias gow --ks-pass pass:gow123456 --key-pass pass:gow123456 GodOfWar.apk
```
