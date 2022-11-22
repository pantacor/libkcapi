LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libkcapi
LOCAL_DESCRIPTION := libkcapi

LOCAL_EXPORT_LDLIBS =

LOCAL_AUTOTOOLS_VERSION := 2.0.4
LOCAL_AUTOTOOLS_CONFIGURE_ARGS := \
	--enable-kcapi-encapp \
	--enable-kcapi-hasher \
	CFLAGS=-Wconversion \
	$(NULL)

LOCAL_AUTOTOOLS_CONFIGURE_ENV := \
	$(NULL)

include $(BUILD_AUTOTOOLS)
