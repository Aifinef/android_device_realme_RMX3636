$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/realme/RMX3636/device.mk)

PRODUCT_DEVICE := RMX3636
PRODUCT_NAME := twrp_RMX3636
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 11 4G
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := RMX3636

PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.maintainer=Aifinef
# Inherit OrangeFox-specific settings
$(call inherit-product-if-exists, device/realme/RMX3636/fox_RMX3636.mk)
