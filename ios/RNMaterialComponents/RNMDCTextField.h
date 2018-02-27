#import <React/RCTComponent.h>
#import "MaterialTextFields.h"

@class RCTEventDispatcher;

@interface RNMDCTextField : MDCTextField

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;

//@property(nonatomic, copy) RCTBubblingEventBlock onCancelButtonPress;

@end
