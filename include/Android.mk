LOCAL_PATH:= $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

#LOCAL_COPY_HEADERS_TO         := qcom/display
LOCAL_COPY_HEADERS            := color_metadata.h

include $(BUILD_COPY_HEADERS)

