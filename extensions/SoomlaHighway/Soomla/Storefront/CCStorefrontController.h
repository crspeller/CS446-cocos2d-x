#ifndef __CCStorefrontController_H_
#define __CCStorefrontController_H_

#include "cocos2d.h"

namespace soomla {
    class CCStorefrontController: public cocos2d::CCObject {
    public:
		static CCStorefrontController *sharedStorefrontController();

        CCStorefrontController(void);
        virtual ~CCStorefrontController(void);

		void openStore();
		void openStoreToItemId(const char *itemId);
		void initHighway(cocos2d::CCDictionary *storeParamsDict, cocos2d::CCDictionary *hooksDict);
    };
};

#endif /* !__CCStorefrontController_H_ */
