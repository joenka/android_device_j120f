LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),j120f)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
