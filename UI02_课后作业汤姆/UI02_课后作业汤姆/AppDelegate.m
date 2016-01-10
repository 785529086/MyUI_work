//
//  AppDelegate.m
//  UI02_课后作业汤姆
//
//  Created by dllo on 15/12/15.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIViewController *vc = [[UIViewController alloc] init];
    self.window.rootViewController = vc;
    
    [self imageView];
    [self cymbal];
    [self eat];
    [self pie];
    [self drink];
    [self fart];
    [self scratch];

    
    
    
    
    
    
    [vc release];
    [_window release];
    
    
    
    
    
    
    
    
    return YES;
}

- (void)imageView {
    UIImageView *image_view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"scratch_0.jpg"]];
    image_view.frame = CGRectMake(0, 0, 414, 735);
    image_view.tag = 100;
    [self.window addSubview:image_view];
    [image_view release];
}


- (void)cymbal {
    UIButton *cymbal = [UIButton buttonWithType:UIButtonTypeSystem];
    cymbal.frame = CGRectMake(20, 400, 80, 80);
    [self.window addSubview:cymbal];
    [cymbal setBackgroundImage:[UIImage imageNamed:@"cymbal"] forState:UIControlStateNormal];
    [cymbal addTarget:self action:@selector(cymbalAction:) forControlEvents:UIControlEventTouchUpInside];

}
- (void)cymbalAction:(UIButton *)button {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 13; i++) {
        NSString *str = [NSString stringWithFormat:@"cymbal_%d.jpg",i];
        UIImage *image = [UIImage imageNamed:str];
        [arr addObject:image];
    }
    UIImageView *imageView = [self.window viewWithTag:100];
    imageView.animationDuration = 13/30 ;
    imageView.animationImages = arr;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];

}

- (void)eat {
//    UIButton *cymbal = [UIButton buttonWithType:UIButtonTypeSystem];
//    UIButton *drink = [UIButton buttonWithType:UIButtonTypeSystem];
//    UIButton *fart = [UIButton buttonWithType:UIButtonTypeSystem];
    UIButton *eat = [UIButton buttonWithType:UIButtonTypeSystem];
    eat.frame = CGRectMake(20, 500,80, 80);
    [self.window addSubview:eat];

    [eat setBackgroundImage:[UIImage imageNamed:@"eat.png"] forState:UIControlStateNormal];
    [eat addTarget:self action:@selector(eatAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)eatAction:(UIButton *)eat {
//    UIImageView *eat_view = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:@"Eat"]];
//    [self.window addSubview:eat_view];
//    [eat_view release];
//    
//    [UIView animateWithDuration:10 animations:^{
//        eat_view.center = CGPointMake(0, 0);
//        eat_view.alpha = 0;
//    }];
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 39; i++) {
        NSString *str = [NSString stringWithFormat:@"eat_%d.jpg",i];
        UIImage *image = [UIImage imageNamed:str];
        [arr addObject:image];
    }
    UIImageView *image_view = [self.window viewWithTag:100];
    image_view.animationDuration = 10;
    image_view.animationImages = arr;
    image_view.animationRepeatCount = 1;
    [image_view startAnimating];

}

- (void)pie {
    UIButton *pie = [UIButton buttonWithType:UIButtonTypeSystem];
    pie.frame = CGRectMake(20, 600, 80, 80);
    [self.window addSubview:pie];

    [pie setBackgroundImage:[UIImage imageNamed:@"pie.png"] forState:UIControlStateNormal];
    [pie addTarget:self action:@selector(pieAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pieAction:(UIButton *)button {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 23; i++) {
        NSString *str = [NSString stringWithFormat:@"pie_%d.jpg",i];
        UIImage *image = [UIImage imageNamed:str];
        [arr addObject:image];
    }
    UIImageView *image_view = [self.window viewWithTag:100];
    image_view.animationDuration = 3;
    image_view.animationImages = arr;
    image_view.animationRepeatCount = 1;
    [image_view startAnimating];

}

- (void)drink {
    UIButton *drink = [UIButton buttonWithType:UIButtonTypeSystem];
    drink.frame = CGRectMake(314, 400, 80, 80);
    [self.window addSubview:drink];
    [drink setBackgroundImage:[UIImage imageNamed:@"drink.png"] forState:UIControlStateNormal];
    [drink addTarget:self action:@selector(drinkAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)drinkAction:(UIButton *)drink {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 80; i++) {
        NSString *str = [NSString stringWithFormat:@"drink_%d.jpg",i];
        UIImage *image = [UIImage imageNamed:str];
        [arr addObject:image];
}
    UIImageView *image_view = [self.window viewWithTag:100];
    image_view.animationImages = arr;
    image_view.animationDuration = 10;
    image_view.animationRepeatCount = 1;
    [image_view startAnimating];
}
//@implementation ViewController
////创建按钮、播放器和标志位；
//UIButton* button;
//AVAudioPlayer* pl;
//int flag=0;
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    //设置按钮类型为0表示自定义，1为矩形圆边白底
//    button=[UIButton buttonWithType:0];
//    //设置按钮位置和像素；
//    button.frame=CGRectMake(110, 190, 100, 100);
//    //设置按钮的初始背景图片
//    [button setBackgroundImage:[UIImage imageNamed:@"play.jpg"] forState:UIControlStateNormal];
//    //把按钮加到视图
//    [self.view addSubview:button];
//    //为按钮添加响应机制
//    [button addTarget:self action:@selector(playMusic) forControlEvents:UIControlEventTouchUpInside];
//    //获取音频路径
//    NSString* path=[[NSBundle mainBundle] pathForResource:@"music" ofType:@"mp3"];
//    //把路径转换为网络路径
//    NSURL* url=[[NSURL alloc] initFileURLWithPath:path];
//    //生成一个播放器
//    pl=[[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
//    pl.delegate=self;
//    
//}
//要实现音频播放必须导入框架。
//导入方法是找到ButtenDemo---TARGETS---ButtenDemo---Build Phases---Link Binary With Libraries目录；在里面找到框架添加就好了。
//#import
////导入音乐播放代理
//@interface ViewController : UIViewController<</span>AVAudioPlayerDelegate>
//
//
//@end
//好了。就改了ViewController.h和ViewController.m两个文件。最后别忘了把名为music.mp3,play.jpg和pause.jpg的3个素材拖到和这些.h/.m的文件同一个目录下。

//-(void)playMusic{
//    if (flag==0) {
//        [button setBackgroundImage:[UIImage imageNamed:@"pause.jpg"] forState:UIControlStateNormal];
//        flag=1;
//        [pl play];
//    }else{
//        [button setBackgroundImage:[UIImage imageNamed:@"play.jpg"] forState:UIControlStateNormal];
//        flag=0;
//        [pl pause];
//    }
//}

- (void)fart {
    UIButton *fart = [UIButton buttonWithType:UIButtonTypeSystem];
    fart.frame = CGRectMake(314, 500, 80, 80);
    [self.window addSubview:fart];
    [fart setBackgroundImage:[UIImage imageNamed:@"fart.png"] forState:UIControlStateNormal];
    [fart addTarget:self action:@selector(fartAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)fartAction:(UIButton *)fart {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 27 ; i++) {
        NSString *str = [NSString stringWithFormat:@"fart_%d.jpg",i];
        UIImage *image = [UIImage imageNamed:str];
        [arr addObject:image];
    }
    UIImageView *image_view = [self.window viewWithTag:100];
    image_view.animationImages = arr;
    image_view.animationDuration = 5;
    image_view.animationRepeatCount = 1;
    [image_view startAnimating];

}
    
- (void)scratch {
    UIButton *scratch = [UIButton buttonWithType:UIButtonTypeSystem];
    scratch.frame = CGRectMake(314, 600, 80, 80);
    [self.window addSubview:scratch];
    [scratch setBackgroundImage:[UIImage imageNamed:@"scratch.png"] forState:UIControlStateNormal];
    [scratch addTarget:self action:@selector(scratchAction:) forControlEvents:UIControlEventTouchUpInside];

}
- (void)scratchAction:(UIButton *)scratch {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 55; i++) {
        NSString *str = [NSString stringWithFormat:@"scratch_%d.jpg",i];
        UIImage *image = [UIImage imageNamed:str];
        [arr addObject:image];
    }
    UIImageView *image_view = [self.window viewWithTag:100];
    image_view.animationImages = arr;
    image_view.animationDuration = 5;
    image_view.animationRepeatCount = 1;
    [image_view startAnimating];


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
