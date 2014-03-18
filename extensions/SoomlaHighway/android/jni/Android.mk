LOCAL_PATH := $(call my-dir)

# cocos2dx-store
include $(CLEAR_VARS)

LOCAL_MODULE := SoomlaHighway_static
LOCAL_MODULE_FILENAME := libSoomlaHighway
LOCAL_SRC_FILES := ../../Soomla/CCSoomla.cpp \
	../../Soomla/CCSoomlaJsonHelper.cpp \
	../../Soomla/CCSoomlaNdkBridge.cpp \
	../../Soomla/CCSoomlaError.cpp \
	../../Soomla/CCStoreController.cpp \
	../../Soomla/CCStoreInventory.cpp \
	../../Soomla/CCStoreUtils.cpp \
	../../Soomla/PurchaseTypes/CCPurchaseType.cpp \
	../../Soomla/PurchaseTypes/CCPurchaseWithMarket.cpp \
	../../Soomla/PurchaseTypes/CCPurchaseWithVirtualItem.cpp \
	../../Soomla/data/CCStoreInfo.cpp \
	../../Soomla/data/SoomlaJSONConsts.cpp \
	../../Soomla/domain/CCMarketItem.cpp \
	../../Soomla/domain/CCNonConsumableItem.cpp \
	../../Soomla/domain/CCPurchasableVirtualItem.cpp \
	../../Soomla/domain/CCVirtualCategory.cpp \
	../../Soomla/domain/CCVirtualItem.cpp \
	../../Soomla/domain/virtualCurrencies/CCVirtualCurrency.cpp \
	../../Soomla/domain/virtualCurrencies/CCVirtualCurrencyPack.cpp \
	../../Soomla/domain/virtualGoods/CCEquippableVG.cpp \
	../../Soomla/domain/virtualGoods/CCLifetimeVG.cpp \
	../../Soomla/domain/virtualGoods/CCSingleUsePackVG.cpp \
	../../Soomla/domain/virtualGoods/CCSingleUseVG.cpp \
	../../Soomla/domain/virtualGoods/CCUpgradeVG.cpp \
	../../Soomla/domain/virtualGoods/CCVirtualGood.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Soomla
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../lib

# Storefront
LOCAL_SRC_FILES += ../../Soomla/Storefront/CCStorefrontController.cpp
LOCAL_SRC_FILES += ../../Soomla/Storefront/CCStorefrontNdkBridge.cpp

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += jansson_static

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../..
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla/data
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla/domain
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla/domain/virtualCurrencies
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla/domain/virtualGoods
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla/PurchaseTypes
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/../../Soomla/Storefront

include $(BUILD_STATIC_LIBRARY)

$(call import-module,external/jansson)
