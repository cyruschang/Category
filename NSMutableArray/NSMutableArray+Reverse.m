//
//  NSMutableArray+Reverse.m
//  ShopCenterBgManager
//
//  Created by hualala on 2018/11/19.
//  Copyright © 2018 22city. All rights reserved.
//

#import "NSMutableArray+Reverse.h"

@implementation NSMutableArray (Reverse)

- (void)reverse {
    NSUInteger count = self.count;
    int mid = floor(count / 2.0);
    for (NSUInteger i = 0; i < mid; i++) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:(count - (i + 1))];
    }
}

@end
