# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from kminilte device
#$(call inherit-product, device/samsung/j120f/device.mk)




# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/j120f/j120f-vendor.mk)

LOCAL_PATH := device/samsung/j120f

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


LOCAL_PATH := device/samsung/j120f
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.universal3475.rc:root/init.recovery.samsungexynos7420.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab


$(call inherit-product, build/target/product/full.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j120f
PRODUCT_DEVICE := j120f
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J120F
