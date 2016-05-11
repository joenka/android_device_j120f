# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/j120f/j120f-vendor.mk)

LOCAL_PATH := device/samsung/j120f

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Ramdisk
PRODUCT_PACKAGES += \
init.environ.rc \
init.wifi.rc \
init.rilcommon.rc \
init.carrier.rc \
init.rilchip.rc \
init.zygote32.rc \
fstab.goldfish \
ueventd.universal3475.rc \
fstab.universal3475 \
ueventd.goldfish.rc \
init.trace.rc \
ueventd.rc \
init.universal3475.usb.rc \
init.rc \
init.baseband.rc \
init.universal3475.rc \
init.usb.rc \
init.goldfish.rc \
init.container.rc

#ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
ro.adb.secure=0	\
ro.secure=0	\
persist.sys.root_access=3	\
ro.allow.mock.location=0	\
ro.debuggable=1	\
persist.sys.usb.config=mtp,adb

# Lights
PRODUCT_PACKAGES += \
    lights.exynos3

# Power
PRODUCT_PACKAGES += \
    power.exynos3

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.ecg.xml:system/etc/permissions/android.hardware.sensor.heartrate.ecg.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \

# Extended settings
PRODUCT_PACKAGES += \
    AriesParts \
    DockAudio

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

# Dalvik VM specific for devices with 2048 MB of RAM (G800F has 1.5G, but 2G config seems to fit)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
