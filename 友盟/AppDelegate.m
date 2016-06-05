//
//  AppDelegate.m
//  友盟
//
//  Created by Mac on 16/6/4.
//  Copyright © 2016年 www.ZXZ123.com. All rights reserved.
//

#import "AppDelegate.h"
#import "UMSocial.h"
#import "UMSocialSinaSSOHandler.h"
#import "UMSocialQQHandler.h"
#import "UMSocialWechatHandler.h"
@interface AppDelegate ()

@end

@implementation AppDelegate




/**

 //uMeng 5753014a67e58ec7d9003974


 微博:
 App Key： 441912895

 App Secret： e67eb4c5f0726d51a774922f832904bc

 回调地址: http://dev.umeng.com/social/ios/operation



 QQ:
 APP ID 1105377201
 APP KEY Z2zWsW0iH9P4DzQJ


 0x41e2b7b1



 微信:

 测试号信息
 appID:     wx6d4ff7b1866a7159
 appsecret: 3cb753e9fa9f8d11a769715360f10be7


 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


    [UMSocialData setAppKey:@"5753014a67e58ec7d9003974"];


    [UMSocialQQHandler setQQWithAppId:@"1105377201" appKey:@"Z2zWsW0iH9P4DzQJ" url:@"http://www.jianshu.com/users/57da48d44319/latest_articles"];

    //设置友盟社会化组件appkey
    //    [UMSocialData setAppKey:UmengAppkey];

        [UMSocialWechatHandler setWXAppId:@"wxd930ea5d5a258f4f" appSecret:@"db426a9829e4b49a0dcac7b4162da6b6" url:@"http://www.umeng.com/social"];


    //打开新浪微博的SSO开关，设置新浪微博回调地址，这里必须要和你在新浪微博后台设置的回调地址一致。需要 #import "UMSocialSinaSSOHandler.h"
    [UMSocialSinaSSOHandler openNewSinaSSOWithAppKey:@"441912895"
                                              secret:@"e67eb4c5f0726d51a774922f832904bc"
                                         RedirectURL:@"http://dev.umeng.com/social/ios/operation"];

    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    BOOL result = [UMSocialSnsService handleOpenURL:url];
    if (result == FALSE) {
        //调用其他SDK，例如支付宝SDK等
    }
    return result;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
