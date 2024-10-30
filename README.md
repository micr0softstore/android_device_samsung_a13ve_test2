# Android device tree for samsung SM-A137F (a13ve)

# How-to compile it:

## twrp-14 Manifest
    repo init --depth=1 -u https://github.com/MrFluffyOven/platform_manifest_twrp_aosp.git -b twrp-14
## Sync
    repo sync
## Clone TheNoobDevs-Staging TWRP tree
    git clone https://github.com/TND-STAGING/android_device_samsung_a13ve.git -b twrp-14 device/samsung/a13ve
## Prepare
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_a13ve-eng
## Repopick Patches
    repopick -Q "branch:android-14+status:open+-change:7371+-change:7543+-change:7553+-change:7671+-change:7717+-change:7718"
## Run the Build Command
    mka recoveryimage
