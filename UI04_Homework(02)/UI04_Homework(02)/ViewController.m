//
//  ViewController.m
//  UI04_Homework(02)
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view = [[UIView alloc] init];
    view.frame = self.view.frame;
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    view.tag = 100;
    [view release];
   
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view viewWithTag:100].backgroundColor = [UIColor redColor];

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view viewWithTag:100].frame = CGRectMake(100, 100, 100, 100);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
