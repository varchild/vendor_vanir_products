#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Vanir Product Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/htc/evita/device_evita.mk)

#... and then make the AOSP device configuration for Jewel get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_evita
PRODUCT_BRAND := htc
PRODUCT_DEVICE := evita
PRODUCT_MODEL := One Xl
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT=cingular_us/evita/evita:4.1.1/JRO03C/131981.6:user/release-keys PRIVATE_BUILD_DESC="3.18.502.6 CL131981 release-keys" BUILD_NUMBER=79936
