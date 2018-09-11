//
//  UIViewController+PopBack.m
//  TestPush
//
//  Created by hualala on 2018/9/11.
//  Copyright © 2018年 hualala. All rights reserved.
//

#import "UIViewController+PopBack.h"

@implementation UIViewController (PopBack)
- (void)cly_popBackToController:(NSString *)controllerClassString animated:(BOOL)animated {
    if (self.navigationController) {
        NSArray *stackControllers = self.navigationController.viewControllers;
        NSArray *filteredResult = [stackControllers filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
            return [evaluatedObject isKindOfClass:NSClassFromString(controllerClassString)];
        }]];
        
        if (filteredResult.count > 0) {
            [self.navigationController popToViewController:filteredResult[0] animated:animated];
        }
    }
}
@end
