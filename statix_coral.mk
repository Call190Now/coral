# Boot animation res
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

# Inherit some common StatiXOS stuff
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_coral
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=coral \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.221005.002 9012097 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGERPRINT)
