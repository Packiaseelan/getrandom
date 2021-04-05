#import "GetrandomPlugin.h"
#if __has_include(<getrandom/getrandom-Swift.h>)
#import <getrandom/getrandom-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "getrandom-Swift.h"
#endif

@implementation GetrandomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetrandomPlugin registerWithRegistrar:registrar];
}
@end
