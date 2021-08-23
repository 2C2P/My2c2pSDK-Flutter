#import "My2c2pSDKPlugin.h"
#if __has_include(<my2c2psdk/my2c2psdk-Swift.h>)
#import <my2c2psdk/my2c2psdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "my2c2psdk-Swift.h"
#endif

@implementation My2c2pSDKPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMy2c2pSDKPlugin registerWithRegistrar:registrar];
}
@end
