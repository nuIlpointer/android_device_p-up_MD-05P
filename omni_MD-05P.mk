#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from MD-05P device
$(call inherit-product, device/p-up/MD-05P/device.mk)

PRODUCT_DEVICE := MD-05P
PRODUCT_NAME := omni_MD-05P
PRODUCT_BRAND := MODE-1
PRODUCT_MODEL := MD-05P
PRODUCT_MANUFACTURER := p-up

PRODUCT_GMS_CLIENTID_BASE := android-dingqin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k71v1_64_bsp-user 11 RP1A.200720.011 1636445061 release-keys"

BUILD_FINGERPRINT := MODE-1/MD-05P/MD-05P:11/RP1A.200720.011/1636445061:user/release-keys
