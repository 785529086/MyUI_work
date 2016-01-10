//
//  ViewController.m
//  周四3关灯游戏
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 dilo. All rights reserved.
//

#import "ViewController.h"
#import "LightView.h"
#define RED [UIColor redColor]
#define BLUE [UIColor blueColor]

@interface ViewController ()<LightViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self creatLightView];
    
    
}


- (void) creatLightView{
    
    /** for循环, 创建25个对象. */
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            
            LightView *lightView = [[LightView alloc] initWithFrame:CGRectMake(10 * (j + 1) + ((self.view.frame.size.width - 60) / 5) * j, 10 * (i + 1) + ((self.view.frame.size.width - 60) / 5) * i, (self.view.frame.size.width - 60) / 5, (self.view.frame.size.width - 60) / 5)];
            
            [self.view addSubview:lightView];
            [lightView release];
            
            
            lightView.tag = 100 + 10 * i + j;
            
            lightView.backgroundColor = [UIColor blueColor];
            
            /** 指定代理人. */
            lightView.delegate = self;
        }
    }
}


- (void)changeColor:(LightView *)view {
    
    /** 参数view就是点击的对象.  */
    [self reverseColor:view];
    
    /** 找到周围对象. */
    LightView *viewleft = [self.view viewWithTag:view.tag - 1];
    [self reverseColor:viewleft];
    
    [self reverseColor:[self.view viewWithTag:view.tag + 1]];
    
    [self reverseColor:[self.view viewWithTag:view.tag - 10]];
    
    [self reverseColor:[self.view viewWithTag:view.tag + 10]];
}


- (void)reverseColor:(LightView *)view {
    
    if (view.backgroundColor == BLUE) {
        view.backgroundColor = RED;
    } else {
        view.backgroundColor = BLUE;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
