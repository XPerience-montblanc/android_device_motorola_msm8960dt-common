LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Camera

LOCAL_SRC_FILES := moto_sensors.c
LOCAL_SHARED_LIBRARIES := libutils libgui liblog
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# Log

include $(CLEAR_VARS)

LOCAL_SRC_FILES := moto_log.c
LOCAL_MODULE := libshim_log
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# mdmcutback

include $(CLEAR_VARS)

LOCAL_SRC_FILES := moto_mdmcutback.c
LOCAL_MODULE := libshim_mdmcutback
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# RIL

include $(CLEAR_VARS)

LOCAL_SRC_FILES := moto_ril.c
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libshim_ril
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# libqc-opt

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     icu53.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_qcopt
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
