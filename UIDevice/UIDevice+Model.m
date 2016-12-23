//
//  UIDevice+Model.m
//  UIDevice
//
//  Created by Chang on 2016/12/23.
//  Copyright © 2016年 ChangLuyang. All rights reserved.
//

#import "UIDevice+Model.h"

@implementation UIDevice (Model)
+ (NSString *)machineModel {
    NSString *deviceType;
    struct utsname systemInfo;
    uname(&systemInfo);
    deviceType = [NSString stringWithCString:systemInfo.machine
                                    encoding:NSUTF8StringEncoding];
    
    if ([deviceType isEqualToString:@"iPhone3,1"]||
        [deviceType isEqualToString:@"iPhone3,2"]||
        [deviceType isEqualToString:@"iPhone3,3"]) {
        return @"iPhone 4";
    }
    if ([deviceType isEqualToString:@"iPhone4,1"]) {
        return @"iPhone 4s";
    }
    
    if([deviceType isEqualToString:@"iPhone5,1"]) {
        return @"iPhone 5";
    }
    
    if([deviceType isEqualToString:@"iPhone5,2"]) {
        return @"iPhone 5";
    }
    
    if([deviceType isEqualToString:@"iPhone5,3"]) {
        return @"iPhone 5c";
    }
    
    if([deviceType isEqualToString:@"iPhone5,4"]) {
        return @"iPhone 5c";
    }
    
    if([deviceType isEqualToString:@"iPhone6,1"]) {
        return @"iPhone 5s";
    }
    
    if([deviceType isEqualToString:@"iPhone6,2"]){
        return @"iPhone 5s";
    }
    
    if([deviceType isEqualToString:@"iPhone7,1"]) {
        return @"iPhone 6 Plus";
    }
    
    if([deviceType isEqualToString:@"iPhone7,2"]) {
        return @"iPhone 6";
    }
    
    if([deviceType isEqualToString:@"iPhone8,1"]) {
        return @"iPhone 6s";
    }
    
    if([deviceType isEqualToString:@"iPhone8,2"]) {
        return @"iPhone 6s Plus";
    }
    
    if([deviceType isEqualToString:@"iPhone8,4"]) {
        return @"iPhone SE";
    }
    
    if ([deviceType isEqualToString:@"iPhone9,1"] ||
        [deviceType isEqualToString:@"iPhone9,3"]) {
        return @"iPhone 7";
    }
    
    if ([deviceType isEqualToString:@"iPhone9,2"] ||
        [deviceType isEqualToString:@"iPhone9,4"]) {
        return @"iPhone 7 Plus";
    }
    
    
    // 增加对iPad的判断
    if ([deviceType isEqualToString:@"iPad1,1"]) {
        return @"iPad";
    }
    
    if ([deviceType isEqualToString:@"iPad1,2"]) {
        return @"iPad 3G";
    }
    
    if ([deviceType isEqualToString:@"iPad2,1"]) {
        return @"iPad 2 (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad2,2"]) {
        return @"iPad 2";
    }
    
    if ([deviceType isEqualToString:@"iPad2,3"]) {
        return @"iPad 2 (CDMA)";
    }
    
    if ([deviceType isEqualToString:@"iPad2,4"]) {
        return @"iPad 2";
    }
    
    if ([deviceType isEqualToString:@"iPad2,5"]) {
        return @"iPad Mini (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad2,6"]) {
        return @"iPad Mini";
    }
    
    if ([deviceType isEqualToString:@"iPad2,7"]) {
        return @"iPad Mini (GSM+CDMA)";
    }
    
    if ([deviceType isEqualToString:@"iPad3,1"]) {
        return @"iPad 3 (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad3,2"]) {
        return @"iPad 3 (GSM+CDMA)";
    }
    
    if ([deviceType isEqualToString:@"iPad3,3"]) {
        return @"iPad 3";
    }
    
    if ([deviceType isEqualToString:@"iPad3,4"]) {
        return @"iPad 4 (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad3,5"]) {
        return @"iPad 4";
    }
    
    if ([deviceType isEqualToString:@"iPad3,6"]) {
        return @"iPad 4 (GSM+CDMA)";
    }
    
    if ([deviceType isEqualToString:@"iPad4,1"]) {
        return @"iPad Air (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad4,2"]) {
        return @"iPad Air (Cellular)";
    }
    
    if ([deviceType isEqualToString:@"iPad4,4"]) {
        return @"iPad Mini 2 (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad4,5"]) {
        return @"iPad Mini 2 (Cellular)";
    }
    
    if ([deviceType isEqualToString:@"iPad4,6"]) {
        return @"iPad Mini 2";
    }
    
    if ([deviceType isEqualToString:@"iPad4,7"]) {
        return @"iPad Mini 3";
    }
    
    if ([deviceType isEqualToString:@"iPad4,8"]) {
        return @"iPad Mini 3";
    }
    
    if ([deviceType isEqualToString:@"iPad4,9"]) {
        return @"iPad Mini 3";
    }
    
    if ([deviceType isEqualToString:@"iPad5,1"]) {
        return @"iPad Mini 4 (WiFi)";
    }
    
    if ([deviceType isEqualToString:@"iPad5,2"]) {
        return @"iPad Mini 4 (LTE)";
    }
    
    if ([deviceType isEqualToString:@"iPad5,3"]) {
        return @"iPad Air 2";
    }
    
    if ([deviceType isEqualToString:@"iPad5,4"]) {
        return @"iPad Air 2";
    }
    
    if ([deviceType isEqualToString:@"iPad6,3"]) {
        return @"iPad Pro 9.7";
    }
    
    if ([deviceType isEqualToString:@"iPad6,4"]) {
        return @"iPad Pro 9.7";
    }
    
    if ([deviceType isEqualToString:@"iPad6,7"]) {
        return @"iPad Pro 12.9";
    }
    
    if ([deviceType isEqualToString:@"iPad6,8"]) {
        return @"iPad Pro 12.9";
    }
    
    // 模拟器
    if ([deviceType isEqualToString:@"i386"]) {
        return @"Simulator";
    }
    
    if ([deviceType isEqualToString:@"x86_64"]) {
        return @"Simulator";
    }
    return @"未知机型Unknown";
}
@end
