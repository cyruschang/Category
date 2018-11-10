//
//  UIAlertView+ActionBlock.h
//  alertView的黑魔法
//
//  Created by Chang on 16/4/18.
//  Copyright © 2016年 常露阳. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertCallBack)(UIAlertView *, NSUInteger);

@interface UIAlertView (Block)<UIAlertViewDelegate>

@property (nonatomic, copy) AlertCallBack callBack;

@end
