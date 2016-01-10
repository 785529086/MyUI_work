//
//  ViewController.m
//  UI08_homework
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
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"首页";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target: self action:@selector(addAction)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(searchAction)];
    [self createButton];

    
    
}
- (void)searchAction {}
- (void)addAction {}
- (void)createButton {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 80, self.view.frame.size.width - 100, 40);
    button.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:button];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];

}
- (void)buttonAction:(UIButton *)button {

    SecendViewController *secend = [[SecendViewController alloc] init];
    [self.navigationController pushViewController:secend animated:NO];
    [secend release];

}

- (void) createnavigationItem {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
