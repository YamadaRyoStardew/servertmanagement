
# Clean
rm -rf hardware/samsung
rm -rf hardware/mediatek
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
