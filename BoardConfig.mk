#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/rhodep

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := rhodep
TARGET_NO_BOOTLOADER := true

# Kernel Setup
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DTBO := true
# Include dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
# Kernel Header
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
# Target Kernel Path
TARGET_KERNEL_CONFIG := vendor/rhodep-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/rhodep
# Additional Flags
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 androidboot.memcg=1
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += swiotlb=2048 cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += loop.max_part=7

# Platform
TARGET_BOARD_PLATFORM := holi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno619

# Inherit the proprietary files
include vendor/motorola/rhodep/BoardConfigVendor.mk
