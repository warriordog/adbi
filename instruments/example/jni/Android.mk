# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := base
# Switch out for 32 bit
# LOCAL_SRC_FILES := ../../base/obj/local/armeabi/libbase.a
LOCAL_SRC_FILES := ../../base/obj/local/arm64-v8a/libbase.a

LOCAL_EXPORT_C_INCLUDES := ../../base
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE    := libexample
# Switch out for 32 bit
# LOCAL_SRC_FILES := ../recv.c  ../recv_arm.c.arm
LOCAL_SRC_FILES := ../recv_arm64.c

LOCAL_CFLAGS := -g
LOCAL_SHARED_LIBRARIES := dl
LOCAL_STATIC_LIBRARIES := base
include $(BUILD_SHARED_LIBRARY)
