LOCAL_PATH := device/Vernee/MIX2gb6

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
	#$(LOCAL_PATH)/dt.img:dt.img \

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := MIX2gb6
PRODUCT_NAME := Vernee_MIX2gb6
PRODUCT_BRAND := Vernee
PRODUCT_MODEL := MIX2_6gb
PRODUCT_MANUFACTURER := Vernee