# Release name
PRODUCT_RELEASE_NAME := RMX3636

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

$(call inherit-product, device/realme/RMX3636/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := realme
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := Realme 11 4G

# Maintainer information
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.maintainer=Aifinef

# Inherit OrangeFox-specific settings
$(call inherit-product-if-exists, device/realme/RMX3636/fox_RMX3636.mk)
