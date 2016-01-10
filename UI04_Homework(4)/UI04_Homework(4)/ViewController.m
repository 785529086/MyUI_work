//
//  ViewController.m
//  UI04_Homework(4)
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "LabelButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LabelButton *lbView = [[LabelButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    [self.view addSubview: lbView];
    lbView.backgroundColor = [UIColor greenColor];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
