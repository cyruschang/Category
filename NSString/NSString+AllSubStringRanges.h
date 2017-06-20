//
//  NSString+AllSubStringRanges.h
//  DemoCode示例代码
//
//  Created by ChangLuyang on 2017/6/20.
//  Copyright © 2017年 ChangLuyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AllSubStringRanges)

/**
 获取一个字符串中所有相同子串的位置信息

 @param subString 子串
 @return 所有子串的位置信息数组，用NSValue包装
 */
- (NSMutableArray <NSValue *> *)allRangesWithSubstring:(NSString *)subString;
@end
