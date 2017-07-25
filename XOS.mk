# Copyright (C) 2017 The halogenOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain a
# copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and
# limitations under the License.

PRODUCT_COPY_FILES += \
	device/lge/bullheadcaf/configs/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit default configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common XOS stuff.
$(call inherit-product, vendor/xos/config/common.mk)

PRODUCT_NAME := XOS_bullheadcaf
PRODUCT_DEVICE := bullheadcaf
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X CAF
PRODUCT_MANUFACTURER := LGE

# Call custom proprietary vendor blobs
$(call inherit-product, device/lge/bullheadcaf/device.mk)
$(call inherit-product, vendor/lge/bullhead/bullhead-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.1.2/N2G47Z/4045513:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.2 N2G47Z 4045513 release-keys"
