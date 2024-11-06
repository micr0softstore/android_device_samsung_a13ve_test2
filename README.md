# Android device tree for samsung SM-A137F (a13ve)

# How-to compile it:

## twrp-14 Manifest
    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
## Sync
    repo sync
## Clone TheNoobDevs-Staging TWRP tree
    git clone https://github.com/TND-STAGING/android_device_samsung_a13ve.git -b twrp-12.1 device/samsung/a13ve
## Prepare
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_a13ve-eng
## Run the Build Command
    mka recoveryimage
