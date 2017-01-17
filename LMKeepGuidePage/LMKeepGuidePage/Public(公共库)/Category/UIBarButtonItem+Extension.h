//
//  UIBarButtonItem+Extension.h
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (nullable UIBarButtonItem *)barButtonItemWithImage:(nullable NSString *)imageName highlightImage:(nullable NSString *)highlightImageName target:(nullable id)target action:(nullable SEL)action;

+ (nullable UIBarButtonItem *)barButtonItemWithImage:(nullable NSString *)imageName target:(nullable id)target action:(nullable SEL)action;

@end
