PRODUCT_DEVICE := it1 # Кодовое имя: it1
PRODUCT_NAME := mirea_it1 # Кодовое имя продукта: mirea_it1
PRODUCT_BRAND := MIREA 
PRODUCT_MODEL := MIREA IT1 # Имя устройства: MIREA IT1
PRODUCT_MANUFACTURER := MIREA # Производитель устройства: MIREA

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# Permissions (HTC)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/permissions/com.htc.sensor.edgesense.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.edgesense.xml \
	$(LOCAL_PATH)/configs/permissions/com.htc.sensor.hallsensor.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.hallsensor.xml \
	$(LOCAL_PATH)/configs/permissions/com.htc.sensor.sensorhub.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.sensorhub.xml \
	$(LOCAL_PATH)/configs/permissions/com.htc.software.market.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.software.market.xml


PRODUCT_PACKAGES += \
	librs_jni \
	liba2dp \
	lights.tegra \
	com.android.future.usb.accessory \
	camera.tegra \
	libpkip \
	libaudioutils \
	tinyplay \
	tinycap \
	tinymix \
	audio.primary.tegra \
	audio.a2dp.default \
	FolioParts \
	wmiconfig

PRODUCT_PROPERTY_OVERRIDES := \
	ro.product.first_api_level=29 # Android 10

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \ # Режим безопасной загрузки отключен

# Resolution settings
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi