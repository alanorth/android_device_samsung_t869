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

$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/samsung/smdk4210-tab/smdk4210-tab_base.mk)
$(call inherit-product-if-exists, vendor/samsung/smdk4210-tab/smdk4210-tab_base.mk)
$(call inherit-product-if-exists, vendor/samsung/t869/t869_base.mk)

# the Tab 7+ has a large mpdi screen
PRODUCT_AAPT_CONFIG := large mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

PRODUCT_PACKAGES += \
    Mms
