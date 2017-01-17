//
//  KeepNewFeatureViewController.m
//  LMKeepGuidePage
//
//  Created by 刘明 on 17/1/17.
//  Copyright © 2017年 刘明. All rights reserved.
//

#import "KeepNewFeatureViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

#import "KeepNewFeatrueView.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"


@interface KeepNewFeatureViewController ()<KeepNewFeatrueViewDelegate>

@property (nonatomic, strong) AVPlayerViewController *avPlayerController;

@property (nonatomic, strong) AVPlayer *avPlayer;

@property (nonatomic, strong) AVPlayerLayer *avPlayerLayer;

@property (nonatomic, strong) KeepNewFeatrueView *keepView ;

@end

@implementation KeepNewFeatureViewController

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupAV];
    
    [self setupUI];
}

- (void)setupUI{
    
    [self.view addSubview:self.keepView];
}

- (void)setupAV{
    
    NSString *avPath = [[NSBundle mainBundle] pathForResource:@"keep" ofType:@"mp4"];
    NSURL *avUrl = [NSURL fileURLWithPath:avPath];
    
    AVAsset *avAsset = [AVAsset assetWithURL:avUrl];
    
    AVPlayerItem *avPlayerItem = [[AVPlayerItem alloc] initWithAsset:avAsset];
    
    self.avPlayer = [AVPlayer playerWithPlayerItem:avPlayerItem];
    
    self.avPlayerLayer = [AVPlayerLayer playerLayerWithPlayer:self.avPlayer];
    
    self.avPlayerLayer.frame = self.view.bounds;
    
    [self.view.layer addSublayer:self.avPlayerLayer];
    
    [self.avPlayer play];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(runLoopAV:) name:AVPlayerItemDidPlayToEndTimeNotification object:avPlayerItem];
    
    //用来播放下一个
    //    [avPlayerItem addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
}
- (void)runLoopAV:(NSNotification *)notiInfo{
    
//    NSLog(@"%@",notiInfo);
    
//    AVPlayerItem *item = [notiInfo object];
    
    [self.avPlayer seekToTime:kCMTimeZero];
    
    [self.avPlayer play];
}

#pragma mark - KeepNewFeatrueViewDelegate
// 登录
- (void)keepNewFeatrueView:(nullable KeepNewFeatrueView *)keepNewFeatrueView didLogin:(nullable UIButton *)loginButton
{
    LoginViewController *login = [[LoginViewController alloc] init];
    [self.navigationController pushViewController:login animated:YES];
}
// 注册
- (void)keepNewFeatrueView:(nullable KeepNewFeatrueView *)keepNewFeatrueView didRegister:(nullable UIButton *)registerButton
{
    RegisterViewController *registerController = [[RegisterViewController alloc] init];
    [self.navigationController pushViewController:registerController animated:YES];
}




#pragma mark - lazy

- (AVPlayerViewController *)avPlayerController{
    
    if (!_avPlayerController) {
        
        _avPlayerController = [[AVPlayerViewController alloc] init];
        _avPlayerController.view.frame = self.view.bounds;
        _avPlayerController.player = self.avPlayer;
        
    }
    return _avPlayerController;
}

//- (AVPlayer *)avPlayer{
//    
//    if (!_avPlayer) {
//        
//        _avPlayer = [[AVPlayer alloc] init];
//    }
//    return _avPlayer;
//}


- (KeepNewFeatrueView *)keepView
{
    if (!_keepView) {
        _keepView = [[KeepNewFeatrueView alloc] init];
        _keepView.delegate = self;
        _keepView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    }
    return _keepView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
