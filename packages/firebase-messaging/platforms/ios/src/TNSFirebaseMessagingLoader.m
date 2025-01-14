#import "TNSFirebaseMessagingLoader.h"
#import <objc/runtime.h>
@implementation TNSFirebaseMessagingLoader : NSObject
+ (void)load {
    Class clazz = NSClassFromString(@"TNSNotificationHelper");
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    id sharedInstance = [clazz performSelector: NSSelectorFromString(@"sharedInstance")];
    [sharedInstance performSelector: NSSelectorFromString(@"observe")];
#pragma clang diagnostic pop
}
@end
