#import <React/RCTUIManager.h>
#import <React/RCTLog.h>
#import "RNMaterialComponentsProgressBarManager.h"
#import "RNMaterialComponentsProgressBar.h"

@implementation RNMaterialComponentsProgressBarManager

- (dispatch_queue_t)methodQueue
{
    return self.bridge.uiManager.methodQueue;
}

RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[RNMaterialComponentsProgressBar alloc] init];
}

RCT_EXPORT_METHOD(setHidden: (nonnull NSNumber *)reactTag hidden:(BOOL)hidden)
{
    [self.bridge.uiManager addUIBlock:^(RCTUIManager *uiManager, NSDictionary<NSNumber *, UIView *> *viewRegistry) {
        RNMaterialComponentsProgressBar *view = (RNMaterialComponentsProgressBar *) viewRegistry[reactTag];
        if ([view isKindOfClass:[RNMaterialComponentsProgressBar class]]) {
            [view.progressView setHidden:hidden animated:YES completion:nil];
        }
    }];
}

RCT_EXPORT_VIEW_PROPERTY(progress, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(progressTintColor, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(trackTintColor, NSNumber);

@end
