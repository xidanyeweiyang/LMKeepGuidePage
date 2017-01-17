//
//  UIBarButtonItem+Extension.m
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
#import "KeepCancelHighlightButton.h"

@implementation UIBarButtonItem (Extension)

+ (nullable UIBarButtonItem *)barButtonItemWithImage:(nullable NSString *)imageName highlightImage:(nullable NSString *)highlightImageName target:(nullable id)target action:(nullable SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highlightImageName] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.size = button.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (nullable UIBarButtonItem *)barButtonItemWithImage:(nullable NSString *)imageName target:(nullable id)target action:(nullable SEL)action
{
    KeepCancelHighlightButton *button = [KeepCancelHighlightButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.size = button.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
