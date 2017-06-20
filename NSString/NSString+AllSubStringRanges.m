//
//  NSString+AllSubStringRanges.m
//  DemoCode示例代码
//
//  Created by ChangLuyang on 2017/6/20.
//  Copyright © 2017年 ChangLuyang. All rights reserved.
//

#import "NSString+AllSubStringRanges.h"

@implementation NSString (AllSubStringRanges)
- (NSMutableArray <NSValue *> *)allRangesWithSubstring:(NSString *)subString {
    if ([self isEqualToString:@""] ||
        self == nil ||
        [subString isEqualToString:@""] ||
        subString == nil) {
        return nil;
    }
    
    NSParameterAssert((subString != nil) || (![subString isEqualToString:@""]));
    
    NSMutableArray *rangeArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.length - subString.length + 1; i++) {
        NSString *tempString = [self substringWithRange:NSMakeRange(i, subString.length)];
        if ([tempString isEqualToString:subString]) {
            NSRange range = NSMakeRange(i, subString.length);
            NSValue *value = [NSValue valueWithRange:range];
            [rangeArray addObject:value];
        }
    }
    return rangeArray.count == 0 ? nil : rangeArray;
}
@end
