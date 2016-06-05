//
//  ViewController.m
//  友盟
//
//  Created by Mac on 16/6/4.
//  Copyright © 2016年 www.ZXZ123.com. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"
@interface ViewController () <UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];


}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    // 1. 分享的title
    [UMSocialData defaultData].extConfig.title = @"greedyDoor来我的简书,瞧一瞧看一看了";

    // 2. 设置我们链接
    [UMSocialData defaultData].extConfig.qqData.url = @"http://www.jianshu.com/users/57da48d44319/latest_articles";

    // 3. 设置音乐
    [[UMSocialData defaultData].urlResource setResourceType:UMSocialUrlResourceTypeMusic url:@"http://music.huoxing.com/upload/20130330/1364651263157_1085.mp3"];

    // 4. 设置视频
    [[UMSocialData defaultData].urlResource setResourceType:UMSocialUrlResourceTypeVideo url:@"http://v.youku.com/v_show/id_XNjQ1NjczNzEy.html?f=21207816&ev=2"];

    [UMSocialData defaultData].extConfig.qqData.qqMessageType = UMSocialQQMessageTypeImage;
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"5753014a67e58ec7d9003974"
                                      shareText:@"世界与我同在"
                                     shareImage:[UIImage imageNamed:@"icon"]
                                shareToSnsNames:@[UMShareToWechatSession,UMShareToWechatTimeline,UMShareToSina,UMShareToQQ,UMShareToQzone]
                                       delegate:self];

    

}

@end
