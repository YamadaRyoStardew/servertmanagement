rm -rf .repo/local_manifests
rm -rf hardware/samsung
rm -rf vendor/samsung
repo init -u https://github.com/BlissRoms/stable_releases.git -b waterlily --git-lfs
mkdir vendor/samsung
git clone https://github.com/YamadaRyoStardew/local_manifest -b main .repo/local_manifests
