//
//  UIAlertView+ActionBlock.m
//  alertView的黑魔法
//
//  Created by Chang on 16/4/18.
//  Copyright © 2016年 常露阳. All rights reserved.
//

#if TARGET_IPHONE_SIMULATOR
#import <objc/objc-runtime.h>
#else 
#import <objc/runtime.h>
#import <objc/message.h>
#endif

#import "UIAlertView+Block.h"

@implementation UIAlertView (Block)

- (void)setCallBack:(AlertCallBack)callBack {
    objc_setAssociatedObject(self, @selector(callBack), callBack, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.delegate = self;
}

- (AlertCallBack)callBack {
    return objc_getAssociatedObject(self, @selector(callBack));
}

#pragma delegate method

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.callBack) {
        self.callBack(alertView, buttonIndex);
    }
}
@end
