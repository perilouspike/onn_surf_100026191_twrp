#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/onn/mid7018

# Screen Resolution
TARGET_SCREEN_WIDTH := 1024
TARGET_SCREEN_HEIGHT := 600

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Treble
BOARD_VNDK_VERSION := current

# fastboot/d hal
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
