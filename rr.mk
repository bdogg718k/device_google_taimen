# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

-include device/google/wahoo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rr_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LG
PRODUCT_RESTRICT_VENDOR_FILES := false


# RR Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Bdogg718"


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.1.0/OPM2.171019.029/4657601:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.1.0 OPM2.171019.029 4657601 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
# Build with gapps
$(call inherit-product, vendor/gapps/gapps.mk)
