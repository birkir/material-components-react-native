#import "RNMDCTextFieldManager.h"
#import "RNMDCTextField.h"
#import <React/RCTBridge.h>
#import <React/RCTUIManager.h>

@implementation RNMDCTextFieldManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (dispatch_queue_t)methodQueue
{
    return _bridge.uiManager.methodQueue;
}

- (UIView *)view
{
    return [[RNMDCTextField alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

RCT_EXPORT_VIEW_PROPERTY(attributedPlaceholder, NSAttributedString);
RCT_EXPORT_VIEW_PROPERTY(attributedText, NSAttributedString);
// editing
RCT_EXPORT_VIEW_PROPERTY(enabled, BOOL);
// font
RCT_EXPORT_VIEW_PROPERTY(hidesPlaceholderOnInput, BOOL);
// leadingUnderlineLabel
RCT_EXPORT_VIEW_PROPERTY(placeholder, NSString);
// placeholderLabel
// positioningDelegate
RCT_EXPORT_VIEW_PROPERTY(text, NSString);
RCT_EXPORT_VIEW_PROPERTY(textColor, UIColor);
RCT_EXPORT_VIEW_PROPERTY(textInsets, UIEdgeInsets);
// trailingUnderlineLabel
// trailingView
// trailingViewMode
// underline


RCT_EXPORT_METHOD(blur:(nonnull NSNumber *)reactTag)
{
    [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary *viewRegistry) {
        RNMDCTextField *textField = viewRegistry[reactTag];
        if ([textField isKindOfClass:[RNMDCTextField class]]) {
            [textField endEditing:YES];
        }
    }];
}

RCT_EXPORT_METHOD(focus:(nonnull NSNumber *)reactTag)
{
    [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary *viewRegistry) {
        RNMDCTextField *textField = viewRegistry[reactTag];
        if ([textField isKindOfClass:[RNMDCTextField class]]) {
             [textField becomeFirstResponder];
        }
    }];
}

RCT_EXPORT_METHOD(clearText:(nonnull NSNumber *)reactTag)
{
    [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary *viewRegistry) {
        RNMDCTextField *textField = viewRegistry[reactTag];
        if ([textField isKindOfClass:[RNMDCTextField class]]) {
            [textField setText:@""];
        }
    }];
}



@end
