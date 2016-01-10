//
//  AppDelegate.m
//  周日哇
//
//  Created by dllo on 15/12/20.
//  Copyright © 2015年 dllo. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
- (void)dealloc{
    [_window release];
    [super dealloc];
    
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ViewController *root = [[ViewController alloc]init];
    self.window.rootViewController = root;
    
    
    NSArray *array = @[[UIColor redColor],[UIColor blackColor],[UIColor yellowColor],[UIColor blueColor],[UIColor orangeColor],[UIColor grayColor],[UIColor greenColor],[UIColor brownColor]];
    NSInteger X = [UIScreen mainScreen].bounds.size.width;
    NSInteger Y = [UIScreen mainScreen].bounds.size.height;
    [self.window release];
    
    for (int i = 0; i < 8; i++) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0,X - X / 8 * i, Y - Y / 8 * i)];
        view.backgroundColor = [array objectAtIndex:i];
        view.center = self.window.center;
        [self.window addSubview:view];
        view.tag = 1001 + i;
        [view release];
        
    }
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.1target:self selector:@selector(speed) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(speed) userInfo:nil repeats:YES];
    
    
    return YES;
}
- (void)speed{
    UIColor *temp = [[UIColor alloc]init];
    temp = [self.window viewWithTag:1001].backgroundColor;
    for (int i = 0; i < 8; i++) {
//        [self.window viewWithtag:(1001 + i)].backgroundColor = [self.window viewWithTag:1002 + i].backgroundColor;
        [self.window viewWithTag:1001 + i].backgroundColor = [self.window viewWithTag:1002 + i].backgroundColor;
    }
    [self.window viewWithTag:1008].backgroundColor = temp;
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
