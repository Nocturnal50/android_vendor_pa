# Check for target product
ifeq (pa_epicmtd,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_galaxys2

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM9 device configuration
$(call inherit-product, device/samsung/epicmtd/cm.mk)

PRODUCT_NAME := pa_epicmtd

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif