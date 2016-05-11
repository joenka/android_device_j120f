# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/j120f/full_j120f.mk)

PRODUCT_NAME := cm_j120f
