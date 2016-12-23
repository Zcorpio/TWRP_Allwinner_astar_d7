#
# Copyright (C) 2012 The Android Open-Source Project
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
LOCAL_PATH := device/AllWinner/X5en_MIPIjdf

USE_CAMERA_STUB := false

# Target Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := polaris
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := X5en_MIPIjdf

# CFLAGS
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=4 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Memory
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 791674880
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1055916032

# BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(LOCAL_PATH)/recovery_keys.c

BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_NTFS_3G := true
BOARD_TOUCH_RECOVERY := true

# TWRP recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_THEME := portrait_mdpi
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/extsd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "extsd"
#TW_DEFAULT_EXTERNAL_STORAGE := true
#RECOVERY_SDCARD_ON_DATA := true
TWHAVE_SELINUX := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/twrp.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TW_BRIGHTNESS_PATH := /sys/class/disp/disp/attr/lcd_bl
TW_MAX_BRIGHTNESS := 255
TW_EXCLUDE_SUPERSU := true
TW_ALWAYS_RMRF := true

# Device Specific sepolicy
BOARD_SEPOLICY_DIRS := \
       device/AllWinner/X5en_MIPIjdf/sepolicy

BOARD_SEPOLICY_UNION := \
       module.te \

