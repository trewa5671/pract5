TARGET_BOARD_PLATFORM := sdm845

# Architecture
TARGET_ARCH := armv64
TARGET_ARCH_VARIANT := arm8.2
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := armv64
TARGET_2ND_ARCH_VARIANT := arm64-v8a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

# Kernel
TARGET_KERNEL_SOURCE := kernel/mirea/it1
TARGET_KERNEL_CONFIG := it_defconfig 
# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736
BOARD_HAS_NO_CACHE_PARTITION := true

AB_OTA_UPDATER := true

AB_OTA_PARTITIONS := \
    boot \
    system \
    vendor

PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER             := NL80211
WPA_SUPPLICANT_VERSION                  := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB        := lib_driver_cmd_wl12xx
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB       := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                    := NL80211
BOARD_HOSTAPD_PRIVATE_LIB               := lib_driver_cmd_wl12xx
#BOARD_HOSTAPD_PRIVATE_LIB              := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                       := wlan0
WIFI_DRIVER_MODULE_NAME                 := rt2800usb
WIFI_DRIVER_MODULE_PATH                 :=
/system/lib/modules/rt2800usb.ko
BOARD_HAVE_BLUETOOTH                    := true
