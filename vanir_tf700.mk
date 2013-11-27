#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-tf700t

# Vanir Overlays
# Vanir config should be updated
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1280x1920.zip:system/media/bootanimation.zip

# Vanir specific overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit common Vanir stuff
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for Transformer Prime.
$(call inherit-product, device/asus/tf700t/full_tf700t.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_tf700
PRODUCT_DEVICE := tf700t
PRODUCT_BRAND := Asus
PRODUCT_MANUFACTURER := Asus
PRODUCT_MODEL := ASUS Transformer Pad TF700T

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.4/KRT16S/US_epad-10.6.1.14.10-20130801:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.4 KRT16S US_epad-10.6.1.14.10-20130801 release-keys"
