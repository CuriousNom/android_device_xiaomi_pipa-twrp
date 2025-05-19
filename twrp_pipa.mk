#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

PRODUCT_DEVICE := pipa
PRODUCT_NAME := twrp_pipa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23043RP34C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
