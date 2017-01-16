//
//  NSObject+CancelAllKeyboard.m
//  1
//
//  Created by Chang on 2017/1/16.
//  Copyright © 2017年 ChangLuyang. All rights reserved.
//

#import "NSObject+CancelAllKeyboard.h"

@implementation NSObject (CancelAllKeyboard)
- (void)cancelAllKeyboard {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder)
                                                to:nil
                                              from:nil
                                          forEvent:nil];
}
@end
