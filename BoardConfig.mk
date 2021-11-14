# Настройки определяющие архитектуру, процессор и тп
TARGET_BOARD_PLATFORM := sdm845 # Snapdragon 845
# Architecture
TARGET_ARCH := arm64 # основная архитектура процессора
TARGET_ARCH_VARIANT := armv8-a # указывает на вариант архитектуры armv8-a
TARGET_CPU_ABI := arm64-v8a # Application Binary Interface (https://developer.android.com/ndk/guides/abis )
# TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75 # Cortex A75
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a # указывает на вариант архитектуры armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a # Application Binary Interface (https://developer.android.com/ndk/guides/abis 
TARGET_2ND_CPU_ABI2 := armeabi # указывает на тип ядра процессора
TARGET_2ND_CPU_VARIANT := cortex-a55 # Cortex A55

# Настройки используемого ядра
# Kernel
TARGET_KERNEL_SOURCE := kernel/mirea/it1 # Исходный код ядра находится в папке kernel/mirea/it1.
TARGET_KERNEL_CONFIG := it_defconfig # Конфигурационный файл: it_defconfig

# Настройки связанные с файловой системой, разделами и образами
# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296 # 96 МБ
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880 # размер образа рекавери в байтах
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296 # 4 ГБ
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736 # 1.5 ГБ
BOARD_HAS_NO_CACHE_PARTITION := true

# Активация схемы обновления A/B
AB_OTA_UPDATER := true # Устройство поддерживает обновления A/B
AB_OTA_PARTITIONS := \ # для разделов boot, system и vendor
	boot \
	system \
	vendor
PRODUCT_PACKAGES += \ # дополнительные пакеты, необходимые для установки A/B OTA
	update_engine \
	update_verifier
TARGET_NO_RECOVERY := true # Устройство не содержит раздела recovery
BOARD_USES_RECOVERY_AS_BOOT := false # определение, что recovery встроено в ядро

# Настройки Wi-Fi и Bluetooth подсистем
# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := wlan0
WIFI_DRIVER_MODULE_NAME := rt2800usb
WIFI_DRIVER_MODULE_PATH :=
	/system/lib/modules/rt2800usb.ko
BOARD_HAVE_BLUETOOTH := true