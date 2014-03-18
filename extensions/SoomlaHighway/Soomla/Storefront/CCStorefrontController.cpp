#include "CCStorefrontController.h"
#include "CCStorefrontNdkBridge.h"

namespace soomla {
#define TAG "SOOMLA StorefrontController"
	
    USING_NS_CC;
	
    static CCStorefrontController *s_SharedStorefrontController = NULL;

    CCStorefrontController *CCStorefrontController::sharedStorefrontController() {
		return s_SharedStorefrontController;
	}

	CCStorefrontController::CCStorefrontController() {
		
	}

	CCStorefrontController::~CCStorefrontController() {

	}

	void CCStorefrontController::openStore() {
		CCDictionary *params = CCDictionary::create();
        params->setObject(CCString::create("CCStorefrontController::openStore"),
						  "method");
        CCStorefrontNdkBridge::callNative(params, NULL);
	}
	
	void CCStorefrontController::openStoreToItemId(const char *itemId) {
		CCDictionary *params = CCDictionary::create();
        params->setObject(CCString::create("CCStorefrontController::openStoreToItemId"),
						  "method");
		params->setObject(CCString::create(itemId), "itemId");
        CCStorefrontNdkBridge::callNative(params, NULL);
	}
	
	void CCStorefrontController::initHighway(CCDictionary *storeParamsDict, CCDictionary *hooksDict) {
		CCDictionary *params = CCDictionary::create();
		params->setObject(CCString::create("CCStorefrontController::initHighway"), "method");
		params->setObject(storeParamsDict, "storeParams");
		params->setObject(hooksDict, "hooks");
		CCStorefrontNdkBridge::callNative(params, NULL);
	}
}
