//
//  ViewController.m
//  UIdaimalianxi
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "View.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    View *view = [[View alloc]initWithFrame:CGRectMake(50, 100, 300, 40)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    self.delegate = view;
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.delegate changeBackColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
