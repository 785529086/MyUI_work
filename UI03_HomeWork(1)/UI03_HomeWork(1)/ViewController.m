//
//  ViewController.m
//  UI03_HomeWork(1)
//
//  Created by dllo on 15/12/16.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "LTView.h"
@interface ViewController ()

@end

@implementation ViewController


//- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        
//    }
//return self;
//
//}

- (void)loadView {
    [super loadView];
    

}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageViewBack = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"QQ.jpg"]];
    imageViewBack.frame = self.view.frame;
    [self.view addSubview:imageViewBack];
    [imageViewBack release];
    
    imageViewBack.userInteractionEnabled = YES;
    
    LTView *viewOfUser = [[LTView alloc] initWithFrame:CGRectMake(50, 400, self.view.frame.size.width - 100, 40)];
    [imageViewBack addSubview:viewOfUser];
    [viewOfUser release];
    viewOfUser.labelOfleft.text = @"用户名";
    viewOfUser.textFieldOfright.placeholder = @"请输入用户名";
    viewOfUser.textFieldOfright.borderStyle = UITextBorderStyleRoundedRect;
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
