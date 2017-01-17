//
//  KeepTarBarViewController.m
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "KeepTarBarViewController.h"
#import "KeepNavigationViewController.h"
#import "KeepTrainViewController.h"
#import "KeepFindViewController.h"
#import "KeepFollowViewController.h"
#import "KeepPersonalViewController.h"

@interface KeepTarBarViewController ()

@end

@implementation KeepTarBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KeepTrainViewController *train = [[KeepTrainViewController alloc] init];
    
    [self addChildViewController:train andWithTitle:@"训练" andWithImage:@"train" andWithSelectedImage:@"train_on"];
    
    KeepFindViewController *find = [[KeepFindViewController alloc] init];
    [self addChildViewController:find andWithTitle:@"发现" andWithImage:@"discovery" andWithSelectedImage:@"discovery_on"];
    
    KeepFollowViewController *follow = [[KeepFollowViewController alloc] init];
    [self addChildViewController:follow andWithTitle:@"关注" andWithImage:@"trends" andWithSelectedImage:@"trends_on"];
    
    KeepPersonalViewController *personal = [[KeepPersonalViewController alloc] init];
    [self addChildViewController:personal andWithTitle:@"我" andWithImage:@"personal" andWithSelectedImage:@"personal_on"];
}

- (void)addChildViewController:(UIViewController *)childViewController andWithTitle:(NSString *)title andWithImage:(NSString *)image andWithSelectedImage:(NSString *)selectedImage;
{
    childViewController.title = title;
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:10.0];
    [childViewController.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    NSMutableDictionary *textSelectAttrs = [NSMutableDictionary dictionary];
    textSelectAttrs[NSForegroundColorAttributeName] = [[UIColor alloc]initWithRed:70/255.0 green:61/255.0 blue:78/255.0 alpha:1.0];
    [childViewController.tabBarItem setTitleTextAttributes:textSelectAttrs forState:UIControlStateSelected];
    childViewController.tabBarItem.image = [UIImage imageNamed:image];
    childViewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    KeepNavigationViewController *navController = [[KeepNavigationViewController alloc] initWithRootViewController:childViewController];
    [self addChildViewController:navController];
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
