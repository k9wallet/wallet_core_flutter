#import "WalletCoreFlutterPlugin.h"
#if __has_include(<wallet_core_flutter/wallet_core_flutter-Swift.h>)
#import <wallet_core_flutter/wallet_core_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wallet_core_flutter-Swift.h"
#endif

@implementation WalletCoreFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWalletCoreFlutterPlugin registerWithRegistrar:registrar];
}
@end
