#import <Flutter/Flutter.h>

@interface UikitviewExamplePlugin : NSObject<FlutterPlugin>
@end


@interface UikitviewFactory : NSObject<FlutterPlatformViewFactory>

@end

@interface UikitviewController : NSObject<FlutterPlatformView>
@property (nonatomic, strong) UIView *view;
@end
