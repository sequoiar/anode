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

LOCAL_MODULE := jninode

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(NODE_PATH)/src
	
LOCAL_SRC_FILES += src/org_meshpoint_anode_RuntimeNative.cpp

LOCAL_SHARED_LIBRARIES += \
	crypto \
	ssl

LOCAL_STATIC_LIBRARIES := \
	node \
	c-ares \
	libev \
	libeio \
	http_parser \
	v8 \
	pty

include $(BUILD_SHARED_LIBRARY)

$(call import-module,deps/c-ares)
$(call import-module,deps/libev)
$(call import-module,deps/libeio)
$(call import-module,deps/http_parser)
$(call import-module,deps/v8)
$(call import-module,pty)
$(call import-module,openssl-android)
$(call import-module,node)
