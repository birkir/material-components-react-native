#import "RNMDCTextField.h"

#import <React/UIView+React.h>
#import <React/RCTEventDispatcher.h>

@interface RNMDCTextField() <UITextFieldDelegate, UITextViewDelegate>
@end


@implementation RNMDCTextField
{
    RCTEventDispatcher *_eventDispatcher;
    NSInteger _nativeEventCount;
}

RCT_NOT_IMPLEMENTED(-initWithFrame:(CGRect)frame)
RCT_NOT_IMPLEMENTED(-initWithCoder:(NSCoder *)aDecoder)

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
    if ((self = [super initWithFrame:CGRectMake(0, 0, 1000, 44)])) {
        _eventDispatcher = eventDispatcher;
        self.delegate = self;
    }
    return self;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if ([textField respondsToSelector:@selector(text)]) {
        [_eventDispatcher sendTextEventWithType:RCTTextEventTypeFocus
                                       reactTag:self.reactTag
                                           text:textField.text
                                            key:nil
                                     eventCount:_nativeEventCount];
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField respondsToSelector:@selector(text)]) {
        [_eventDispatcher sendTextEventWithType:RCTTextEventTypeBlur
                                       reactTag:self.reactTag
                                           text:textField.text
                                            key:nil
                                     eventCount:_nativeEventCount];
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if ([textField respondsToSelector:@selector(text)]) {
        _nativeEventCount++;
        [_eventDispatcher sendTextEventWithType:RCTTextEventTypeChange
                                       reactTag:self.reactTag
                                           text:[textField.text stringByReplacingCharactersInRange:range withString:string]
                                            key:nil
                                     eventCount:_nativeEventCount];
    }
    return true;
}

@end




//
//@implementation RNMDCTextField
//
//RCT_EXPORT_MODULE();
//
//- (UIView *)view
//{
//    MDCTextField *view = [[MDCTextField alloc] init];
//    view.delegate = self;
//    return view;
//}
//
//RCT_EXPORT_VIEW_PROPERTY(attributedPlaceholder, NSAttributedString);
//RCT_EXPORT_VIEW_PROPERTY(attributedText, NSAttributedString);
//// editing
//RCT_EXPORT_VIEW_PROPERTY(enabled, BOOL);
//// font
//RCT_EXPORT_VIEW_PROPERTY(hidesPlaceholderOnInput, BOOL);
//// leadingUnderlineLabel
//RCT_EXPORT_VIEW_PROPERTY(placeholder, NSString);
//// placeholderLabel
//// positioningDelegate
//RCT_EXPORT_VIEW_PROPERTY(text, NSString);
//RCT_EXPORT_VIEW_PROPERTY(textColor, UIColor);
//RCT_EXPORT_VIEW_PROPERTY(textInsets, UIEdgeInsets);
//// trailingUnderlineLabel
//// trailingView
//// trailingViewMode
//// underline
//
//// Events
//RCT_EXPORT_VIEW_PROPERTY(onChangeTest, RCTBubblingEventBlock);
//
//@end

