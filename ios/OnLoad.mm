#import "CxxTurboModule.h"
#import <Foundation/Foundation.h>
#import <ReactCommon/CxxTurboModuleUtils.h>

// TODO: change this to your module name
@interface CxxTurboModuleOnLoad : NSObject
@end

// TODO: change this to your module name
@implementation CxxTurboModuleOnLoad

+ (void)load {
  facebook::react::registerCxxModuleToGlobalModuleMap(
// TODO: change this to your module name
      std::string(facebook::react::CxxTurbomodule::kModuleName),
      [&](std::shared_ptr<facebook::react::CallInvoker> jsInvoker) {
// TODO: change this to your module name
        return std::make_shared<facebook::react::CxxTurbomodule>(jsInvoker);
      });
}

@end
