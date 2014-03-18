#ifndef __CCStorefrontNdkBridge_H_
#define __CCStorefrontNdkBridge_H_

#include "cocos2d.h"
#include "CCSoomlaError.h"

namespace soomla {
    class CCStorefrontNdkBridge {
    public:
        static cocos2d::CCObject *callNative(cocos2d::CCDictionary *params,
											 CCSoomlaError **pError);
    };
};


#endif /* !_CCStorefrontNdkBridge_H_ */
