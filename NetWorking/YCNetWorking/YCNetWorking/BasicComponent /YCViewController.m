//// YCViewController.m
// YCNetWorking
//
// 
//


#import "YCViewController.h"

@interface YCViewController ()

@end

@implementation YCViewController


#pragma mark — life circle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.hidesBottomBarWhenPushed = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)dealloc {
    NSLog(@"VC释放%@", NSStringFromClass(self.class));
}

@end
