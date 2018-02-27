#import "RNMaterialComponentsProgressBar.h"
#import <React/RCTConvert.h>
#import <React/RCTBridgeModule.h>
#import <React/UIView+React.h>
#import "MaterialProgressView.h"

@implementation RNMaterialComponentsProgressBar
{
    MDCProgressView *_progressView;
    NSNumber *_progress;
    UIColor *_progressTintColor;
    UIColor *_trackTintColor;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

#pragma mark - Setter

- (void)setProgress:(NSNumber*)progress {
    _progress = progress;
    if (_progressView) {
        [_progressView setProgress:[progress floatValue] animated:YES completion:nil];
    }
}

- (NSNumber*)progress {
   return _progress;
}

- (void)setProgressTintColor:(NSNumber*)progressTintColor {
    _progressTintColor = [RCTConvert UIColor:progressTintColor];
    if (_progressView) {
        [_progressView setProgressTintColor:_progressTintColor];
    }
}

- (UIColor*)progressTintColor {
   return _progressTintColor;
}

- (void)setTrackTintColor:(NSNumber*)trackTintColor {
    _trackTintColor = [RCTConvert UIColor:trackTintColor];
    if (_progressView) {
        [_progressView setProgressTintColor:_trackTintColor];
    }
}

- (UIColor*)trackTintColor {
    return _trackTintColor;
}

- (void)setProgressBarHidden:(BOOL)hidden {
    [_progressView setHidden:hidden animated:YES completion:nil];
}

#pragma mark - Utility

#pragma mark - React View Management

- (void) layoutSubviews
{
    [super layoutSubviews];
    if (_progressView == nil) {
        _progressView = [[MDCProgressView alloc] init];
        _progressView.progress = [_progress floatValue];
        _progressView.progressTintColor = _progressTintColor;
        _progressView.trackTintColor = _trackTintColor;
        [self insertSubview:_progressView atIndex:0];
    }
    [_progressView setFrame:self.reactContentFrame];
}

@end
