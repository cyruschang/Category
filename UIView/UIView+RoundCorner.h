//
//  UIView+RoundCorner.h
//
//  Created by ChangLuyang on 2017/5/12.
//  Copyright © 2017年 常露阳. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 给UIView设置不规则圆角的分类(可以设置任意一个角为圆角)
 */
@interface UIView (RoundCorner)

/**
 设置上方两个角为圆角

 @param radius 圆角半径
 */
- (void)setTopCornerRadius:(CGFloat)radius;

/**
 设置下方两个角为圆角

 @param radius 圆角半径
 */
- (void)setBottomCornerRadius:(CGFloat)radius;

/**
 四个角都设置为圆角

 @param radius 圆角半径
 */
- (void)setCornerRadius:(CGFloat)radius;


/**
 设置圆角

 @param rectCorner 圆角的位置
 @param cornerRadius 圆角的半径
 */
- (void)setRect:(UIRectCorner)rectCorner cornerRadius:(CGFloat)cornerRadius;
@end
