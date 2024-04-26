
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNCxxTurbomoduleSpec.h"

@interface CxxTurbomodule : NSObject <NativeCxxTurbomoduleSpec>
#else
#import <React/RCTBridgeModule.h>

@interface CxxTurbomodule : NSObject <RCTBridgeModule>
#endif

@end
