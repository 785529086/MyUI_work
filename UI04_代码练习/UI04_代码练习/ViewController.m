//
//  ViewController.m
//  UI04_代码练习
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"
#import "MoveView.h"
@interface ViewController ()<TouchViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self touchEvent];
    [self moveView];
    
}

- (void)touchEvent {
    
    TouchView *touchView = [[TouchView alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 40)];
    touchView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:touchView];
    [touchView release];
    touchView.dalegate = self;

}

- (void)changeBackColor {

    self.view.backgroundColor = [UIColor redColor];

}


- (void)moveView {
    MoveView *moveView = [[MoveView alloc] initWithFrame:CGRectMake(50, 300, 50, 50)];
    [self.view addSubview: moveView];
    moveView.backgroundColor = [UIColor blackColor];
    moveView.tag = 100;
    [moveView release];


}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    if (touch.view == [self.view viewWithTag:100]) {
        [self.view viewWithTag:100].center = point ;
//       self.view.frame  = point.x;
//        self.view.frame.
        
    }


}



- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];/* 使视图辞职第一响应者地位 */

}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
