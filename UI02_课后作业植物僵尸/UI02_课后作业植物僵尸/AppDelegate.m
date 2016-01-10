//
//  AppDelegate.m
//  UI02_课后作业植物僵尸
//
//  Created by dllo on 15/12/16.
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
    
    UIViewController *vc = [[UIViewController alloc] init];
    self.window.rootViewController = vc;
    [self imageView];
    [self zombie];
    
    

    [_window release];
    [vc release];

    return YES;
}
- (void)imageView {
    UIImageView *image_view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BackGround.png"]];
    image_view.frame = self.window.frame;
    [self.window addSubview:image_view];
    [image_view release];
}
- (void)zombie {
    UIImageView *zombie_view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Zombie0"]];
  zombie_view.frame = CGRectMake(250, 80, 100, 100);
    [self.window addSubview:zombie_view];
    [zombie_view release];
    



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
