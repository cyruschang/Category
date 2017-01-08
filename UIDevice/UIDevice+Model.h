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
 获取手机型号

 @return 型号
 */
+ (NSString *)machineModel;

@end
