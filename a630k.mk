#
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

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/pantech/a630k/a630k-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/a630k/overlay

# Camera
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/media_profiles.xml:system/etc/media_profiles.xml

# Init
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/logo.rle:root/logo.rle \
    device/pantech/a630k/files/logo.rle:root/initlogo.rle \
    device/pantech/a630k/files/init.qcom.rc:root/init.qcom.rc \
    device/pantech/a630k/files/init.rc:root/init.rc \
    device/pantech/a630k/files/ueventd.a630k.rc:root/ueventd.rc

# GPS
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/gps.conf:system/etc/gps.conf

# APN
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/apns-conf.xml:system/etc/apns-conf.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Keylayout
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/EF11_keypad.kl:system/usr/keylayout/EF11_keypad.kl

# KoreanIME
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/libjni_koreanime.so:system/lib/libjni_koreanime.so \
    device/pantech/a630k/files/KoreanIME.apk:system/app/LatinIME.apk

# Root Explorer
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/RootExplorer.apk:system/app/RootExplorer.apk

# SetCpu
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/libsetcpu-native.so:system/lib/libsetcpu-native.so \
    device/pantech/a630k/files/SetCpu.apk:system/app/SetCpu.apk

# Etc
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/install-recovery.sh:system/etc/install-recovery.sh

PRODUCT_PACKAGES += \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    gps.a630k \
    lights.msm7k \
    copybit.msm7k

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_LOCALES += hdpi

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/pantech/a630k/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)
