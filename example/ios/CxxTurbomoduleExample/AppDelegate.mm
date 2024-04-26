#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>

#import <React/CoreModulesPlugins.h>
#import <ReactCommon/RCTTurboModuleManager.h>

// TODO: CHANGE MY NAME
#import "CxxTurboModule.hpp"

@interface AppDelegate () <RCTTurboModuleManagerDelegate> {}
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"CxxTurbomoduleExample";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
  return [self bundleURL];
}

- (NSURL *)bundleURL
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                 jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  // TODO: CHANGE MY NAME
  if (name == "CxxTurbomodule") {
    // TODO: CHANGE MY NAME
    return std::make_shared<facebook::react::CxxTurbomodule>(jsInvoker);
  }

  return nullptr;
}

@end
