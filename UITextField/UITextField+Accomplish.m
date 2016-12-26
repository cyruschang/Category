//
//  UITextField+Accomplish.m
//  1
//
//  Created by Chang on 2016/12/26.
//  Copyright © 2016年 ChangLuyang. All rights reserved.
//

#import "UITextField+Accomplish.h"

#define kInputAccessoryRightMarigh 15.0f
#define kInputAccessoryHeight 50.0f
#define kScreenW [UIScreen mainScreen].bounds.size.width

@implementation UITextField (Accomplish)
- (void)showAccomplishButton {
    self.inputAccessoryView = [self createInputView];
}

- (UIView *)createInputView {
    UIView *access = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kInputAccessoryHeight)];
    access.backgroundColor = [UIColor whiteColor];
    
    UIView *up = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, 1)];
    up.backgroundColor = [UIColor lightGrayColor];
    [access addSubview:up];
    
    UIView *down = [[UIView alloc] initWithFrame:CGRectMake(0, kInputAccessoryHeight - 1, kScreenW, 1)];
    down.backgroundColor = [UIColor lightGrayColor];
    [access addSubview:down];
    
    
    UIButton *finish = [[UIButton alloc] initWithFrame:CGRectMake(kScreenW - kInputAccessoryHeight - kInputAccessoryRightMarigh, 0, kInputAccessoryHeight, kInputAccessoryHeight)];
    [finish setTitle:@"完成" forState:UIControlStateNormal];
    finish.titleLabel.textAlignment = NSTextAlignmentRight;
    finish.titleLabel.font = [UIFont systemFontOfSize:15];
    [finish setTitleColor:[UIColor colorWithRed:68/255.0f green:68/255.0f blue:68/255.0f alpha:1]
                 forState:UIControlStateNormal];
    [finish addTarget:self
               action:@selector(resignFirstResponder)
     forControlEvents:UIControlEventTouchUpInside];
    [access addSubview:finish];
    return access;

}
@end
