#import "RNMaterialComponentsCard.h"
#import "MaterialCards.h"

@implementation RNMaterialComponentsCard

RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[MDCCard alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(cornerRadius, CGFloat);

RCT_CUSTOM_VIEW_PROPERTY(shadowElevation, NSString *, MDCCard)
{
    [view setShadowElevation:[json floatValue] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(borderWidth, NSString *, MDCCard)
{
    [view setBorderWidth:[json floatValue] forState:UIControlStateNormal];
}

RCT_CUSTOM_VIEW_PROPERTY(borderColor, NSString *, MDCCard)
{
    [view setBorderColor:[RCTConvert UIColor:json] forState:UIControlStateNormal];
}

// TODO: Add different states for shadowElevation, borderWidth and borderColor.
//       States: UIControlStateHighlighted, MDCCardCellStateSelected

@end
