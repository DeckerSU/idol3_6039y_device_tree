USE_HOST_LEX=yes
DEVICE_PATH := device/alcatel/idol347


TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Properties (reset them here, include more in device if needed)
# TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
# (fix)

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.bootloader=L1BG8080BG00 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_SEPARATED_DT := false
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

#TARGET_KERNEL_SOURCE := kernel/alcatel/msm8916
#TARGET_KERNEL_CONFIG := cyanogenmod_idol347-perf_defconfig
TARGET_PREBUILT_KERNEL := device/alcatel/idol3_6039y/kernel

# CPU
TARGET_CPU_CORTEX_A53 := true

# malloc implementation
MALLOC_IMPL := dlmalloc

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
#TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 32768000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 262144000
BOARD_PERSISTIMAGE_PARTITION_SIZE := 32768000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 32768000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887438000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12767573000

# Qualcomm support
# BOARD_USES_QCOM_HARDWARE := true
# (fix) https://plus.google.com/+AniketLamba/posts/E4QCcXF3uXm

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab

# SELinux
#include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += device/alcatel/idol347/sepolicy
HAVE_SELINUX := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TWRP
TW_THEME := portrait_hdpi_decker
#TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true
TW_NO_SCREEN_TIMEOUT := true
TW_SCREEN_BLANK_ON_BOOT := true

# DEBUG (BOTH needed to enable logcat)
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# RECOVERY_VARIANT := twrp
# RECOVERY_VARIANT := philz
