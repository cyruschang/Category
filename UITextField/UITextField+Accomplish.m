//
//  UITextField+Accomplish.m
//  1
//
//  Created by Chang on 2016/12/26.
//  Copyright © 2016年 ChangLuyang. All rights reserved.
//

#import "UITextField+Accomplish.h"

#define kInputAccessoryHeight 44.0f
#define kScreenW [UIScreen mainScreen].bounds.size.width

@implementation UITextField (Accomplish)
- (void)showAccomplishButton {
    self.inputAccessoryView = [self createInputView];
}

- (UIView *)createInputView {
    UIView *access = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kInputAccessoryHeight)];
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kInputAccessoryHeight)];
    toolBar.barStyle = UIBarStyleDefault;
    
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:(UIBarButtonSystemItemFlexibleSpace) target:self action:nil];
    UIBarButtonItem *resign = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(resignFirstResponder)];
    [resign setTintColor:[UIColor grayColor];
    NSArray *itemArray = [NSArray arrayWithObjects:button, resign, nil];
    [toolBar setItems:itemArray];
    
    
    return toolBar;

}
@end
