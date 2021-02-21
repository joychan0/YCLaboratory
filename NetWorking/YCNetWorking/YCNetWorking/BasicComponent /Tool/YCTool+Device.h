//// YCTool+Device.h
// YCNetWorking
//
// 
//


#import "YCTool.h"

NS_ASSUME_NONNULL_BEGIN

@interface YCTool (Device)


/// 判断当前屏幕是否为全面屏
+ (BOOL)ycDevice_IsFullScreen;

/// 返回app 版本号
+ (NSString *)appVersion;

/// 返回appbuild号
+ (NSString *)appBuild;

@end

NS_ASSUME_NONNULL_END
