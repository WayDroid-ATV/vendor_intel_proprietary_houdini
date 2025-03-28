LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := houdini
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := prebuilts/bin/houdini
LOCAL_SHARED_LIBRARIES := libhoudini
LOCAL_POST_INSTALL_CMD := \
						  mkdir -p $(TARGET_OUT)/lib/arm; \
						  cp -r $(LOCAL_PATH)/prebuilts/lib/arm $(TARGET_OUT)/lib;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := houdini64
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := prebuilts/bin/houdini64
LOCAL_SHARED_LIBRARIES := libhoudini
LOCAL_POST_INSTALL_CMD := \
						  mkdir -p $(TARGET_OUT)/lib64/arm64; \
						  cp -r $(LOCAL_PATH)/prebuilts/lib64/arm64 $(TARGET_OUT)/lib64; \

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := houdini.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := init
LOCAL_SRC_FILES := prebuilts/etc/init/houdini.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm_dyn
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm_dyn
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm_exe
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm_exe
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm64_dyn
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm64_dyn
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm64_exe
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm64_exe
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := cpuinfo.arm.txt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := prebuilts/lib64/arm64/cpuinfo
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MULTILIB := both
LOCAL_MODULE := libhoudini
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CHECK_ELF_FILES := false
ifdef TARGET_2ND_ARCH
LOCAL_SRC_FILES_32 := prebuilts/lib/libhoudini.so
LOCAL_SRC_FILES_64 := prebuilts/lib64/libhoudini.so
else
LOCAL_SRC_FILES := prebuilts/lib/libhoudini.so
endif
include $(BUILD_PREBUILT)
