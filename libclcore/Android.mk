LOCAL_PATH:=

include $(CLEAR_VARS)
LOCAL_MODULE := libclcore_hax
LOCAL_SRC_FILES := $(ANDROID_BUILD_TOP)/prebuilts/sdk/renderscript/lib/arm64/libclcore.bc
LOCAL_MODULE_SUFFIX := .bc
LOCAL_MODULE_CLASS := SHARED_LIBRARY
LOCAL_PRELINK_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib64
LOCAL_POST_INSTALL_CMD := $(hide) mv $(TARGET_OUT)/lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX) \
			  $(TARGET_OUT)/lib64/libclcore.bc
include $(BUILD_PREBUILT)