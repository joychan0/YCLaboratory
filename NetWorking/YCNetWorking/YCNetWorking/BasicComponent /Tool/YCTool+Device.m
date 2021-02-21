//// YCTool+Device.m
// YCNetWorking
//
// 
//


#import "YCTool+Device.h"
#import<sys/utsname.h>

#define IPHONE_NAME_2G @"iPhone 2G"
#define IPHONE_NAME_3G @"iPhone 3G"
#define IPHONE_NAME_3GS @"iPhone 3GS"
#define IPHONE_NAME_4 @"iPhone 4"
#define IPHONE_NAME_4S @"iPhone 4S"
#define IPHONE_NAME_5 @"iPhone 5"
#define IPHONE_NAME_5S @"iPhone 5S"
#define IPHONE_NAME_5C @"iPhone 5C"
#define IPHONE_NAME_6 @"iPhone 6"
#define IPHONE_NAME_6S @"iPhone 6S"
#define IPHONE_NAME_6P @"iPhone 6 Plus"
#define IPHONE_NAME_6SP @"iPhone 6S Plus"
#define IPHONE_NAME_SE @"iPhone SE"
#define IPHONE_NAME_7 @"iPhone 7"
#define IPHONE_NAME_7P @"iPhone 7 Plus"
#define IPHONE_NAME_8 @"iPhone 8"
#define IPHONE_NAME_8P @"iPhone 8 Plus"
#define IPHONE_NAME_X @"iPhone X"
#define IPHONE_NAME_XR @"iPhone XR"
#define IPHONE_NAME_XS @"iPhone XS"
#define IPHONE_NAME_XSMAX @"iPhone XSMAX"
#define IPHONE_NAME_11 @"iPhone 11"
#define IPHONE_NAME_11P @"iPhone 11 Pro"
#define IPHONE_NAME_11PMAX @"iPhone 11 Pro MAX"
#define IPHONE_NAME_SE2 @"iPhone SE2"
#define IPHONE_NAME_12 @"iPhone 12"
#define IPHONE_NAME_12MINI @"iPhone 12 mini"
#define IPHONE_NAME_12P @"iPhone 12 Pro"
#define IPHONE_NAME_12PMAX @"iPhone 12 Pro MAX"



@implementation YCTool (Device)

+ (BOOL)ycDevice_IsFullScreen {
    if ([[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_X]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_XR]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_XS]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_XSMAX]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_11]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_11P]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_11PMAX]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_12]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_12MINI]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_12P]
        || [[self ycDevice_judgeIPhoneType] isEqualToString:IPHONE_NAME_12PMAX]) {
        return YES;
    }
    return NO;
}


// 这里使用字符串判断手机型号，还有一种通过屏幕大小判断手机型号的方法 两种方法各有利弊
+ (NSString *)ycDevice_judgeIPhoneType {
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString * phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    
    // simulator 模拟器
    
    if ([phoneType isEqualToString:@"i386"])   return @"Simulator";
    
    if ([phoneType isEqualToString:@"x86_64"])  return @"Simulator";
    
    //  常用机型  不需要的可自行删除
    
    if([phoneType  isEqualToString:@"iPhone1,1"])  return IPHONE_NAME_2G;
    
    if([phoneType  isEqualToString:@"iPhone1,2"])  return IPHONE_NAME_3G;
    
    if([phoneType  isEqualToString:@"iPhone2,1"])  return IPHONE_NAME_3GS;
    
    if([phoneType  isEqualToString:@"iPhone3,1"])  return IPHONE_NAME_4;
    
    if([phoneType  isEqualToString:@"iPhone3,2"])  return IPHONE_NAME_4;
    
    if([phoneType  isEqualToString:@"iPhone3,3"])  return IPHONE_NAME_4;
    
    if([phoneType  isEqualToString:@"iPhone4,1"])  return IPHONE_NAME_4S;
    
    if([phoneType  isEqualToString:@"iPhone5,1"])  return IPHONE_NAME_5;
    
    if([phoneType  isEqualToString:@"iPhone5,2"])  return IPHONE_NAME_5;
    
    if([phoneType  isEqualToString:@"iPhone5,3"])  return IPHONE_NAME_5C;
    
    if([phoneType  isEqualToString:@"iPhone5,4"])  return IPHONE_NAME_5C;
    
    if([phoneType  isEqualToString:@"iPhone6,1"])  return IPHONE_NAME_5S;
    
    if([phoneType  isEqualToString:@"iPhone6,2"])  return IPHONE_NAME_5S;
    
    if([phoneType  isEqualToString:@"iPhone7,1"])  return IPHONE_NAME_6P;
    
    if([phoneType  isEqualToString:@"iPhone7,2"])  return IPHONE_NAME_6;
    
    if([phoneType  isEqualToString:@"iPhone8,1"])  return IPHONE_NAME_6S;
    
    if([phoneType  isEqualToString:@"iPhone8,2"])  return IPHONE_NAME_6SP;
    
    if([phoneType  isEqualToString:@"iPhone8,4"])  return IPHONE_NAME_SE;
    
    if([phoneType  isEqualToString:@"iPhone9,1"])  return IPHONE_NAME_7;
    
    if([phoneType  isEqualToString:@"iPhone9,2"])  return IPHONE_NAME_7P;
    
    if([phoneType  isEqualToString:@"iPhone10,1"]) return IPHONE_NAME_8;
    
    if([phoneType  isEqualToString:@"iPhone10,4"]) return IPHONE_NAME_8;
    
    if([phoneType  isEqualToString:@"iPhone10,2"]) return IPHONE_NAME_8P;
    
    if([phoneType  isEqualToString:@"iPhone10,5"]) return IPHONE_NAME_8P;
    
    if([phoneType  isEqualToString:@"iPhone10,3"]) return IPHONE_NAME_X;
    
    if([phoneType  isEqualToString:@"iPhone10,6"]) return IPHONE_NAME_X;
    
    if([phoneType  isEqualToString:@"iPhone11,8"]) return IPHONE_NAME_XR;
    
    if([phoneType  isEqualToString:@"iPhone11,2"]) return IPHONE_NAME_XS;
    
    if([phoneType  isEqualToString:@"iPhone11,4"]) return IPHONE_NAME_XSMAX;
    // 美版的iPhone XS
    if([phoneType  isEqualToString:@"iPhone11,6"]) return IPHONE_NAME_XSMAX;
 
    if([phoneType  isEqualToString:@"iPhone12,1"])  return IPHONE_NAME_11;
    
    if ([phoneType isEqualToString:@"iPhone12,3"])  return IPHONE_NAME_11P;
    
    if ([phoneType isEqualToString:@"iPhone12,5"])   return IPHONE_NAME_11PMAX;
    
    if ([phoneType isEqualToString:@"iPhone12,8"])   return IPHONE_NAME_SE2;

    if ([phoneType isEqualToString:@"iPhone13,1"])   return IPHONE_NAME_12MINI;

    if ([phoneType isEqualToString:@"iPhone13,2"])   return IPHONE_NAME_12;
    
    if ([phoneType isEqualToString:@"iPhone13,3"])   return IPHONE_NAME_12P;

    if ([phoneType isEqualToString:@"iPhone13,4"])   return IPHONE_NAME_12PMAX;
    
    return phoneType;
}

+ (NSString *)appVersion{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
}

+ (NSString *)appBuild{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}


@end
