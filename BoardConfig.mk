# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/pantech/a630k/BoardConfigVendor.mk

BOARD_USE_FROYO_LIBCAMERA := true

TARGET_USES_2G_VM_SPLIT := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := a630k

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_DO_NOT_SETS_CAN_DRAW := true

TARGET_PROVIDES_INIT_TARGET_RC := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/pantech/a630k/recovery/recovery_ui.c

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := a630k
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/pantech/a630k/netd/UsbController.cpp

WIFI_DRIVER_MODULE_NAME     := ar6000
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_ARG	    := "ifname=wlan0 fwmode=1"

BOARD_EGL_CFG := device/pantech/a630k/files/egl.cfg

BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048

#dev:    size   erasesize  name
#mtd0: 00600000 00020000 "boot"
#mtd1: 18600000 00020000 "system"
#mtd2: 00600000 00020000 "recovery"
#mtd3: 002c0000 00020000 "lgdrm"
#mtd4: 00100000 00020000 "splash"
#mtd5: 00040000 00020000 "misc"
#mtd6: 04000000 00020000 "cache"
#mtd7: 1ffe0000 00020000 "userdata"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x18600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x1ffe0000
BOARD_FLASH_BLOCK_SIZE := 131072

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true
#TARGET_PROVIDES_LIBRIL := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
TARGET_SF_NEEDS_REAL_DIMENSIONS := true

TARGET_PREBUILT_KERNEL := device/pantech/a630k/kernel
#TARGET_PREBUILT_KERNEL := device/pantech/a630k/kernel_xionia
