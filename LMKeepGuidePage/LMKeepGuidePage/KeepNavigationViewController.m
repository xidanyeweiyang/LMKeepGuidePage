//
//  KeepNavigationViewController.m
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "KeepNavigationViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "Constant.h"


@interface KeepNavigationViewController ()

@end

@implementation KeepNavigationViewController

+ (void)initialize
{
    //    // 设置整个项目barButtonItem中的主题样式
    //    UIBarButtonItem *barButtonItem = [UIBarButtonItem appearance];
    //    // 设置普通状态
    //    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    //    textAttrs[NSForegroundColorAttributeName] = FXRGBColor(7, 170, 153);
    //    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    //    [barButtonItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    //
    //    // 设置不可用状态
    //    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    //    selectedTextAttrs[NSForegroundColorAttributeName] = FXRGBColor(7, 170, 153);
    //
    //    selectedTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    //    [barButtonItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    // 设置UINavigationBar的背景色
    [[UINavigationBar appearance] setBarTintColor:KeepNavigationThemeColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:17]}];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count >= 1) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:@"back" target:self action:@selector(back)];
    }
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
