#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a13ve device
$(call inherit-product, device/samsung/a13ve/device.mk)

PRODUCT_DEVICE := a13ve
PRODUCT_NAME := twrp_a13ve
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A137F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a13vensxx-user 12 SP1A.210812.016 A137FXXS7EXI3 release-keys"

BUILD_FINGERPRINT := samsung/a13vensxx/a13ve:12/SP1A.210812.016/A137FXXS7EXI3:user/release-keys
