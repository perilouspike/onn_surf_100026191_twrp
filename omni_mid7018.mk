#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TWRP-common stuffs, if building TWRP.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mid7018_mr_32 device
$(call inherit-product, device/onn/mid7018/device.mk)

PRODUCT_DEVICE := mid7018
PRODUCT_NAME := omni_mid7018
PRODUCT_BRAND := onn
PRODUCT_MODEL := 100026191
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_mid7018_mr_32-user 11 RP1A.200720.011 mp5V4198 release-keys"

BUILD_FINGERPRINT := onn/100026191/mid7018_mr_32:11/RP1A.200720.011/hkh20220510:user/release-keys
