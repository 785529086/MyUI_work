//
//  SecendViewController.m
//  UI08_daimalianxi
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "SecendViewController.h"
#import "ThirdViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"第二页";
}

- (void)createButton {
    
    UIButton *secendButton = [UIButton buttonWithType:UIButtonTypeSystem];
    secendButton.frame = CGRectMake(50, 70, self.view.frame.size.width - 100, 40);
    secendButton.backgroundColor = [UIColor whiteColor];
    [secendButton setTitle:@"下一页" forState:UIControlStateNormal];
    [self.view addSubview:secendButton];
    [secendButton addTarget:self action:@selector(secendAction:) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)secendAction:(UIButton *)button {
    
    ThirdViewController *third = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:third animated:YES];
    [third release];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
