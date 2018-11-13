//
//  UIImage+Compress.m
//  MenDianBao
//
//  Created by cyruschang on 2018/7/4.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "UIImage+Compress.h"

@implementation UIImage (Compress)

- (UIImage *)imageWithCompressMaxLength:(NSUInteger)maxLength {
    NSData *data = [self compressWithMaxLength:maxLength];
    return [UIImage imageWithData:data];
}

- (NSData *)compressWithMaxLength:(NSUInteger)maxLength {
    CGFloat compression = 1;
    NSData *data = UIImageJPEGRepresentation(self, compression);
    if (data.length < maxLength) return data;
    
    CGFloat max = 1;
    CGFloat min = 0;
    for (int i = 0; i < 6; ++i) {
        compression = (max + min) / 2;
        data = UIImageJPEGRepresentation(self, compression);
        if (data.length < maxLength * 0.9) {
            min = compression;
        } else if (data.length > maxLength) {
            max = compression;
        } else {
            break;
        }
    }
    if (data.length < maxLength) return data;
    UIImage *resultImage = [UIImage imageWithData:data];
    // Compress by size
    NSUInteger lastDataLength = 0;
    while (data.length > maxLength && data.length != lastDataLength) {
        lastDataLength = data.length;
        CGFloat ratio = (CGFloat)maxLength / data.length;
        CGSize size = CGSizeMake((NSUInteger)(resultImage.size.width * sqrtf(ratio)),
                                 (NSUInteger)(resultImage.size.height * sqrtf(ratio)));
        UIGraphicsBeginImageContext(size);
        [resultImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
        resultImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        data = UIImageJPEGRepresentation(resultImage, compression);
    }
    return data;
}

@end
