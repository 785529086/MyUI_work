//
//  AppDelegate.m
//  UI16_homework(1)
//
//  Created by dllo on 16/1/4.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecendViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate ()

@property (nonatomic, retain) UITabBarController *tb;

@end

@implementation AppDelegate

- (void)dealloc {
    
    [_tb release];
    [super dealloc];

}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor grayColor];
    [self.window makeKeyAndVisible];
    [self createTabBarViewController];
    [_window release];
  
    return YES;
}

- (void)createTabBarViewController {

    self.tb = [[UITabBarController alloc]init];
    [self createViewConttrollers];

    self.window.rootViewController = self.tb;
    [_tb release];
}



- (void)createViewConttrollers {

    ViewController *VCfirst = [[ViewController alloc]init];
    UINavigationController *naviFirst = [[UINavigationController alloc]initWithRootViewController:VCfirst];
    // 将第一个界面的背景颜色设置为红色.
    VCfirst.view.backgroundColor = [UIColor redColor];
    
//    // 将第一个界面的标题设置为首页.
    VCfirst.navigationItem.title = @"首页";

  
    naviFirst.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:100];
    [VCfirst release];
    
    
    SecendViewController *VCSecend = [[SecendViewController alloc]init];
    UINavigationController *naviSecend = [[UINavigationController alloc]initWithRootViewController:VCSecend];
    // 将第二个界面的背景颜色设置为黄色.
    VCSecend.view.backgroundColor = [UIColor yellowColor];
    naviSecend.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem: UITabBarSystemItemFavorites tag:200];
    [VCSecend release];
    
    
    ThirdViewController *VCThird = [[ThirdViewController alloc]init];
    UINavigationController *naviThird = [[UINavigationController alloc]initWithRootViewController:VCThird];
    
    VCThird.view.backgroundColor = [UIColor greenColor];
    naviThird.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:300];
    [VCThird release];
    
    
    self.tb.viewControllers = @[naviFirst,naviSecend,naviThird];
    [naviFirst release];
    [naviSecend release];
    [naviThird release];


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
