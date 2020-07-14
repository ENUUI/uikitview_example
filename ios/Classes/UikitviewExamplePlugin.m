#import "UikitviewExamplePlugin.h"

@implementation UikitviewExamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    UikitviewFactory *factory = [[UikitviewFactory alloc] init];
    [registrar registerViewFactory:factory withId:@"plugin.enuui/uikitview_example"];
}

@end


@implementation UikitviewController {
    NSObject<FlutterBinaryMessenger>* _messenger;
    UILabel *_label;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
        _view = [[UIView alloc] initWithFrame:frame];
        _view.backgroundColor = [UIColor whiteColor];
        
        _label = [[UILabel alloc] init];
        _label.text = @"UiKitView";
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:18.0];
        
        [_view addSubview:_label];
        
        [self addObserver:self forKeyPath:@"self.view.frame" options:NSKeyValueObservingOptionNew context:NULL];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"self.view.frame"]) {
        _label.frame = _view.bounds;
    }
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"self.view.frame"];
}

@end

@implementation UikitviewFactory

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args {
    return [[UikitviewController alloc] initWithFrame:frame];
}
@end

