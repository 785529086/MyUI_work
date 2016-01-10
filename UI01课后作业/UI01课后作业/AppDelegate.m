//
//  AppDelegate.m
//  UI01课后作业
//
//  Created by dllo on 15/12/14.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /* 创建5个UIView
     要求 ：
     1.命名 view1 ~ view5
     2.分别设置背景颜色红、黄、绿、蓝、灰
     3.位置与大小自定义。
     4.设置UIView常用属性。（数据自定）*/
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIViewController *vc = [[UIViewController alloc]init];
    self.window.rootViewController = vc;
    [vc release];
    
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    view1.backgroundColor = [UIColor redColor];
    [self.window addSubview:view1];
    [view1 release];
    
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(200, 100, 100, 50)];
    view2.backgroundColor = [UIColor blueColor];
    [self.window addSubview:view2];
    [view2 release];
    
    
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 50, 50)];
    view3.backgroundColor = [UIColor greenColor];
    [self.window addSubview:view3];
    [view3 release];
    
    UIView *view4 = [[UIView alloc] initWithFrame: CGRectMake(200, 300, 100, 50)];
    view4.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:view4];
    [view4 release];
    
    
    
    UIView *view5 = [[UIView alloc] initWithFrame:CGRectMake(150, 500, 50, 50)];
    view5.backgroundColor = [UIColor blackColor];
    [self.window addSubview:view5];
    [view5 release];
    
 


    
    
    
    
    
    
    return YES;
}
- (void)dealloc {
    [_window release];
    [super dealloc];

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
