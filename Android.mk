ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf-msm8996)

sdm-libs := sdm/libs
display-hals := include $(sdm-libs)/utils $(sdm-libs)/core

ifneq ($(TARGET_IS_HEADLESS), true)
    display-hals += libcopybit libmemtrack hdmi_cec \
                    $(sdm-libs)/hwc $(sdm-libs)/hwc2 gpu_tonemapper libdrmutils libdisplayconfig
endif

ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif

display-hals += gralloc

include $(call all-named-subdir-makefiles,$(display-hals))

endif
