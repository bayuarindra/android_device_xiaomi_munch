#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/munch/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Supported Device Flags
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_INCLUDE_STOCK_ARCORE := true

#Superior OS Flags
TARGET_INCLUDE_PIXEL_CHARGER := true
BUILD_WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true 
USE_QUICKPIC := false
TARGET_SUPPORTS_BLUR := true

# Quick Tap Feature
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := arrow_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.3.0.TLMMIXM:user/release-keys
