//
//  ViewController.m
//  UI09_homework(2)
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "SecendViewController.h"

@interface ViewController ()<Vc2Delegate>


@property (nonatomic, retain) UIButton *button;


@end

@implementation ViewController

- (void)dealloc {
    
    [_label release];
    [_button release];
    [super dealloc];
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor redColor];
    [self createLabel];
    [self createButton];
    
}

- (void)createLabel {
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 40)];
    self.label.backgroundColor = [UIColor whiteColor];
    self.label.tag = 100;
    self.label.text = @"你吃啥了";
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    [_label release];
}

- (void)createButton {
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.frame = CGRectMake(100, 200, self.view.frame.size.width - 200, 40);
    self.button.backgroundColor = [UIColor blueColor];
    [self.button setTitle:@"下一页" forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonAction:(UIButton *)button {
    
    SecendViewController *secend = [[SecendViewController alloc] init];
    /** 指定VC2 的代理人. */
     secend.delegate = self;
    [self.navigationController pushViewController:secend animated:YES];
    [secend release];
   
    
    self.delegate = secend;
    
}




/** 利用参数进行属性的赋值*/
- (void)addTextFieldToLabel:(NSString *)textOfTextField {
    
//    [self.label setText:textOfTextField];
    
    self.label.text = textOfTextField;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
