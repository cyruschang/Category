//
//  NSMutableArray+Reverse.h
//  ShopCenterBgManager
//
//  Created by hualala on 2018/11/19.
//  Copyright © 2018 22city. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (Reverse)
/**
 Reverse the index of object in this array.
 Example: Before @[ @1, @2, @3 ], After @[ @3, @2, @1 ].
 */
- (void)reverse;
@end

NS_ASSUME_NONNULL_END
