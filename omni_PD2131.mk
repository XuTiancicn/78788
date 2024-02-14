#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PD2131 device
$(call inherit-product, device/vivo/PD2131/device.mk)

PRODUCT_DEVICE := PD2131
PRODUCT_NAME := omni_PD2131
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2131A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6877v1_64-user 12 SP1A.210812.003 compiler09111812 release-keys"

BUILD_FINGERPRINT := vivo/PD2131/PD2131:12/SP1A.210812.003/compiler09111812:user/release-keys
