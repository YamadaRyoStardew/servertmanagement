#!/bin/bash
# Build LineageOS for a13ve (Samsung A13 4G)
repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs
/opt/crave/resync.sh
# Clean
rm -rf hardware/samsung
rn -rf hardware/mediatek
# Clone trees
git clone https://cuynutt.ddns.net/ncatt/clang prebuilts/clang/host/linux-x86/clang-r383902
git clone https://cuynutt.ddns.net/ncatt/dt device/samsung/a32
kernel/samsung/mt6768
git clone https://cuynutt.ddns.net/ncatt/hw-mtk hardware/mediatek
git clone https://cuynutt.ddns.net/ncatt/vendor vendor/samsung/a32
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr -b lineage-23.2 device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_samsung -b lineage-23.2 hardware/samsung


# Build
source build/envsetup.sh
launch lineage_a32-bp4a-userdebug
mka bacon