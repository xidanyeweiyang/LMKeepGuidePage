//
//  KeepNewFeatrueView.h
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KeepNewFeatrueView;

@protocol KeepNewFeatrueViewDelegate <NSObject>

// 登录
- (void)keepNewFeatrueView:(nullable KeepNewFeatrueView *)keepNewFeatrueView didLogin:(nullable UIButton *)loginButton;
// 注册
- (void)keepNewFeatrueView:(nullable KeepNewFeatrueView *)keepNewFeatrueView didRegister:(nullable UIButton *)registerButton;

@end

@interface KeepNewFeatrueView : UIView

@property (nonatomic, weak, nullable) id <KeepNewFeatrueViewDelegate> delegate;

@end
