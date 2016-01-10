//
//  SecendViewController.m
//  UI0_homework
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "SecendViewController.h"

@interface SecendViewController ()

@property (nonatomic, retain) UILabel *labelName;
@property (nonatomic, retain) UILabel *labelGender;
@property (nonatomic, retain) UIImageView *imageView;

@end

@implementation SecendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"第二页";
    [self createTwoLabel];
    [self createImageView];
    
    
    
    
}

- (void)createTwoLabel {
    self.labelName = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 40)];
    self.labelName.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.labelName];
    self.labelName.text = [self.mDic objectForKey:@"title"];
    self.labelName.textAlignment = NSTextAlignmentCenter;
    
    [_labelName release];
    
    
    self.labelGender = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, self.view.frame.size.width - 100, 40)];
    self.labelGender.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.labelGender];
    self.labelGender.textAlignment = NSTextAlignmentCenter;
    self.labelGender.text = [self.mDic objectForKey:@"detial"];
    
    
    [_labelGender release];

}


- (void)createImageView {

    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self.mDic objectForKey:@"image"]]];
    
    self.imageView.frame = CGRectMake(50, 300, self.view.frame.size.width - 100, 300);
    [self.view addSubview:self.imageView];

    [_imageView release];


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
