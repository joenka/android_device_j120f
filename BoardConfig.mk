# Define Local path
LOCAL_PATH := device/samsung/j120f

# Vendorname
BOARD_VENDOR := samsung


# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7


# Platform

TARGET_BOARD_PLATFORM := exynos3
TARGET_BOARD_PLATFORM_GPU := mali-t720

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := j120f

#Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j120f/dtb.img

TARGET_KERNEL_SOURCE := kernel/samsung/j120f


BOARD_BOOTIMAGE_PARTITION_SIZE := 0x360000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x360000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/j120f/kernel

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_INITRC := device/samsung/j120f/init.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab

# PowerHAL
TARGET_POWERHAL_VARIANT := exynos3


BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SUPPRESS_SECURE_ERASE := true
# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# TWRP specific build flags
DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
