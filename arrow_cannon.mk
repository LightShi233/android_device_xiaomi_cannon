#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from cannon device
$(call inherit-product, device/xiaomi/cannon/device.mk)

PRODUCT_DEVICE := cannon
PRODUCT_NAME := arrow_cannon
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2007J22C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cannong-user 12 SP1A.210812.016 V13.0.3.0.SJEMIXM release-keys"

BUILD_FINGERPRINT := Redmi/cannong_global/cannong:12/SP1A.210812.016/V13.0.3.0.SJEMIXM:user/release-keys
