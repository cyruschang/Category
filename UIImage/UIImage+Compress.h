//
//  UIImage+Compress.h
//  MenDianBao
//
//  Created by cyruschang on 2018/7/4.
//  Copyright © 2018年 apple. All rights reserved.
//  图片压缩到指定大小以下

#import <UIKit/UIKit.h>

@interface UIImage (Compress)

- (NSData *)compressWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)imageWithCompressMaxLength:(NSUInteger)maxLength;

@end
