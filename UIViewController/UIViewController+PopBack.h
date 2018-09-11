//
//  UIViewController+PopBack.h
//  TestPush
//
//  Created by hualala on 2018/9/11.
//  Copyright © 2018年 hualala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PopBack)

/**
 导航栏pop到指定的控制器
 */
- (void)cly_popBackToController:(NSString *)controllerClassString animated:(BOOL)animated;
@end
