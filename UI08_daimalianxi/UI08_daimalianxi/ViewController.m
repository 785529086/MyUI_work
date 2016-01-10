//
//  ViewController.m
//  UI08_daimalianxi
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "SecendViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"首页";
    [self createButton];
    
    
}

- (void)createButton {

    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeSystem];
    firstButton.frame = CGRectMake(50, 70, self.view.frame.size.width - 100, 40);
    firstButton.backgroundColor = [UIColor whiteColor];
    [firstButton setTitle:@"下一页" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    [firstButton addTarget:self action:@selector(secendAction:) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)secendAction:(UIButton *)button {

    SecendViewController *secend = [[SecendViewController alloc] init];
    [self.navigationController pushViewController:secend animated:YES];
    [secend release];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
