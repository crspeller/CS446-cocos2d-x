

#ifndef __CCStorefrontNdkBridgeIos_H_
#define __CCStorefrontNdkBridgeIos_H_

#include <string>
#include "jansson.h"

namespace soomla {
    class CCStorefrontNdkBridgeIos {
    public:
        static json_t *receiveCppMessage(json_t *jsonParams);
        static void ndkCallback(json_t *jsonParams);
    };
};

#endif //__CCStorefrontNdkBridgeIos_H_
