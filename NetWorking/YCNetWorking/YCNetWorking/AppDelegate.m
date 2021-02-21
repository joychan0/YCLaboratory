//// AppDelegate.m
// YCNetWorking
//
// 
//


#import "AppDelegate.h"
#import "YCTool.h"
#import "YCTool+Device.h"


@interface AppDelegate ()



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 获取设备信息
    [self checkDevice];
    // 初始化视图
    [self setRootViewWithOptions:launchOptions];
    
    return YES;
}



/// 应用程序被杀死
/// @param application applicaion
- (void)applicationWillTerminate:(UIApplication *)application {
    
}

- (void)setRootViewWithOptions:(NSDictionary *)launchOptions {
    self.window = [UIApplication sharedApplication].windows.firstObject;
    
    
    YCViewController *vc = [[YCViewController alloc] init];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
}

- (void)checkDevice {
    // 判断全面屏
    self.deviceIsFullScreen = [YCTool ycDevice_IsFullScreen];
}


@end
