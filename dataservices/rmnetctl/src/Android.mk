LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
common_deps := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
kernel_includes := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
kernel_includes_uapi := $(kernel_includes)/uapi

LOCAL_COPY_HEADERS_TO   := dataservices/rmnetctl
LOCAL_COPY_HEADERS      := ../inc/librmnetctl.h

LOCAL_SRC_FILES := librmnetctl.c
LOCAL_CFLAGS := -Wall -Werror

LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(kernel_includes)
LOCAL_C_INCLUDES += $(kernel_includes_uapi)

LOCAL_MODULE := librmnetctl
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
