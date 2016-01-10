//
//  ViewController.m
//  UI06_homework(1)
//
//  Created by dllo on 15/12/21.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) UIImageView *login;
@property (nonatomic, retain) UIImageView *reg;
@property (nonatomic, retain) UIImageView *forgetKey;
@property (nonatomic, retain) UISegmentedControl *seg;

@end

@implementation ViewController

- (void)dealloc{

    [_login release];
    [_reg release];
    [_forgetKey release];
    [_seg release];
    [super dealloc];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createForgetKey];
    [self createregister];
    [self createlogin];
    [self createSeg];
   
}

- (void)createlogin {

    self.login = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"QQ.jpg"]];
    self.login.frame = self.view.frame;
    [self.view addSubview:self.login];
    [self.login release];

}

- (void)createregister {


    self.reg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2"]];
    self.reg.frame = self.view.frame;
    [self.view addSubview:self.reg];
    [self.reg release];
    
}

- (void)createForgetKey {
    self.forgetKey = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3"]];
    self.forgetKey.frame = self.view.frame;
    [self.view addSubview:self.forgetKey];
    [self.forgetKey release];
}


- (void)createSeg {

    self.seg = [[UISegmentedControl alloc] initWithItems:@[@"登录",@"注册",@"忘记密码"]];
    self.seg.center = self.view.center;
    [self.view addSubview:self.seg];
    [self.seg addTarget:self action:@selector(segAction:) forControlEvents:UIControlEventValueChanged];

}

- (void)segAction:(UISegmentedControl *)seg {

//    if ([[seg titleForSegmentAtIndex:0] isEqualToString: @"登录"]) {
//        [self.view insertSubview:self.login
//                     belowSubview:seg];
//    }
//
//    if ([[seg titleForSegmentAtIndex:1] isEqualToString:@"注册"]) {
//        [self.view insertSubview:self.reg belowSubview:seg];
//    }
//    if ([[seg titleForSegmentAtIndex:2] isEqualToString:@"忘记密码"]) {
//        [self.view insertSubview:self.forgetKey belowSubview:seg];
//    }
    
    switch ([seg selectedSegmentIndex]) {
        case 0:[self.view insertSubview:self.login belowSubview:seg];break;
        case 1:[self.view insertSubview:self.reg belowSubview:seg];break;
        case 2:[self.view insertSubview:self.forgetKey belowSubview:seg];break;
            
            
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
