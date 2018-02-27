#import <React/RCTUIManager.h>
#import <React/RCTLog.h>
#import "RNMaterialComponentsCollectionManager.h"
#import "RNMaterialComponentsCollection.h"

@implementation RNMaterialComponentsCollectionManager
{
    RNMaterialComponentsCollection *_controller;
}

- (dispatch_queue_t)methodQueue
{
    return self.bridge.uiManager.methodQueue;
}

RCT_EXPORT_MODULE();

- (UIView *)view
{
    _controller = [[RNMaterialComponentsCollection alloc] init];
    [[UIApplication sharedApplication].delegate.window.rootViewController addChildViewController:_controller];
    return _controller.collectionView;
}

@end
