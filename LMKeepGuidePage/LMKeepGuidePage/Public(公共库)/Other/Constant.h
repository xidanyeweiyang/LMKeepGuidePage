//
//  Constant.h
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import <Foundation/Foundation.h>

// 屏幕尺寸
#define KeepScreenBounds [UIScreen mainScreen].bounds
#define KeepScreenSize [UIScreen mainScreen].bounds.size
#define KeepScreenWidth [UIScreen mainScreen].bounds.size.width
#define KeepScreenHeight [UIScreen mainScreen].bounds.size.height

// RGB颜色
#define KeepRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define KeepRGBA(R, G, B, A) [UIColor colorWithRed:(R)/255.f green:(G)/255.f blue:(B)/255.f alpha:(A)]
// 主题颜色
#define KeepNavigationBarYellowColor KeepRGBColor(254.0, 212.0, 53.0)
#define KeepNavigationThemeColor KeepRGBColor(89.0, 79.0, 95.0)  
