//
//  ViewController.m
//  UI04_Homework(03)
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "UILabeelOfButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabeelOfButton *label = [[UILabeelOfButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    [self.view addSubview:label];
    label.backgroundColor = [UIColor blackColor];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
