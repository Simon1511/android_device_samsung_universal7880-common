# Copyright (C) 2019 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= simstat.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libbase

LOCAL_MODULE:= simstat
LOCAL_MODULE_TAGS:= optional

LOCAL_INIT_RC := simstat.rc

include $(BUILD_EXECUTABLE)

