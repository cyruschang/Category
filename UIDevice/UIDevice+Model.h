//
//  UIDevice+Model.h
//  UIDevice
//
//  Created by Chang on 2016/12/23.
//  Copyright © 2016年 ChangLuyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sys/utsname.h>

@interface UIDevice (Model)


/**
 获取手机星号

 @return 星号
 */
+ (NSString *)machineModel;

@end
