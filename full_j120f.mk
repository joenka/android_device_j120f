# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/samsung/j120f


LOCAL_PATH := device/samsung/j120f
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.universal3475.rc:root/init.recovery.samsungexynos3475.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab


$(call inherit-product, build/target/product/full.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j120f
PRODUCT_DEVICE := j120f
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J120F
