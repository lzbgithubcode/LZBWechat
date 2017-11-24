//
//  AppDelegate.m
//  LZBWeChat
//
//  Created by zibin on 2017/11/21.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1.创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //2.设置窗口根控制器
    [self prepareLaunchWindowsSettingChildren];
    
    //3.显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - 启动准备工作
- (void)prepareLaunchWindowsSettingChildren
{
   WXBaseTabBarViewController *rooterVC =  [WXMainPublicAPI rootTabBarCcontroller];
    
   //主页
    [WXMainPublicAPI addChildVC:[[UIViewController alloc]init] normalImageName:@"tabbar_mainframe" selectedImageName:@"tabbar_mainframeHL" title:@"微信" isRequiredNavController:YES];
    
    //通讯录
   [WXMainPublicAPI addChildVC:[[UIViewController alloc]init] normalImageName:@"tabbar_contacts" selectedImageName:@"tabbar_contactsHL" title:@"通讯录" isRequiredNavController:YES];
    
    //发现
   [WXMainPublicAPI addChildVC:[[UIViewController alloc]init] normalImageName:@"tabbar_discover" selectedImageName:@"tabbar_discoverHL" title:@"发现" isRequiredNavController:YES];
    
    //我
    [WXMainPublicAPI addChildVC:[[UIViewController alloc]init] normalImageName:@"tabbar_me" selectedImageName:@"tabbar_meHL" title:@"我" isRequiredNavController:YES];

    self.window.rootViewController = rooterVC;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
