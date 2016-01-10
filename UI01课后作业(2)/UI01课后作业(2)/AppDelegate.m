//
//  AppDelegate.m
//  UI01课后作业(2)
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
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    UIViewController *vc = [[UIViewController alloc]init];
    self.window.rootViewController = vc;
    
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 5; j++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(414.0 / 5.0 * j , 736.0 / 8.0 * i ,414.0 / 5.0 ,736.0 / 8.0 )];
            view.backgroundColor = [UIColor colorWithRed:(arc4random()%(255 - 0 + 1) + 0) / 255.0 green:(arc4random()%(255 - 0 + 1) + 0) / 255.0 blue:(arc4random()%(255 - 0 + 1)+ 0) / 255.0 alpha:0.5f];
            [self.window addSubview:view];
            [view release];
    } 
    }
    
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
