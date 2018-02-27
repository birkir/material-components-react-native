#import "RNMaterialComponentsRaisedButton.h"
#import "MaterialButtons.h"

@implementation RNMaterialComponentsRaisedButton
{
    MDCRaisedButton *_button;
}

RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[MDCRaisedButton alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(hitAreaInsets, UIEdgeInsets);
RCT_EXPORT_VIEW_PROPERTY(disabledAlpha, CGFloat);
RCT_EXPORT_VIEW_PROPERTY(uppercaseTitle, BOOL);
RCT_EXPORT_VIEW_PROPERTY(underlyingColorHint, UIColor);
RCT_EXPORT_VIEW_PROPERTY(inkColor, UIColor);
RCT_EXPORT_VIEW_PROPERTY(inkMaxRippleRadius, CGFloat);

RCT_CUSTOM_VIEW_PROPERTY(title, NSString*, MDCRaisedButton)
{
    [view setTitle:json forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(elevation, CGFloat*, MDCRaisedButton)
{
    [view setElevation:[json floatValue] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(enabled, BOOL*, MDCRaisedButton)
{
    [view setEnabled:[json boolValue] animated:YES];
}

RCT_CUSTOM_VIEW_PROPERTY(backgroundColor, UIColor*, MDCRaisedButton)
{
    [view setBackgroundColor:[RCTConvert UIColor:json] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(inkStyle, NSString*, MDCRaisedButton)
{
    if ([json isEqualToString:@"bounded"]) {
        [view setInkStyle:MDCInkStyleBounded];
    }
    else if  ([json isEqualToString:@"unbounded"]) {
        [view setInkStyle:MDCInkStyleUnbounded];
    }
}

@end
