LOCAL_PATH := device/realme/RMX3636

PRODUCT_USE_DYNAMIC_PARTITIONS := true
AB_OTA_UPDATER := true

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl.recovery \
    bootctrl.mt6833.recovery \
    otapreopt_script \
    update_engine \
    update_verifier \
    update_engine_sideload
