//
//  SecendViewController.m
//  UI09_homework(2)
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "SecendViewController.h"

@interface SecendViewController ()

@property (nonatomic, retain) UITextField *textField;
@property (nonatomic, retain) UIButton *backButton;

@end

@implementation SecendViewController

- (void)dealloc {
    
    [_textField release];
    [_backButton release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"第二页";
    self.view.backgroundColor = [UIColor blackColor];
    
    [self createTextField];
    [self createbackButton];
  
    ViewController *vc = [self.navigationController.viewControllers firstObject];
    NSLog(@"%@", vc.label.text);
    
    [self addLabelToTextField:vc.label.text];
    
}

- (void)createTextField {
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 40)];
    self.textField.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textField];
    [_textField release];
    
    
}

- (void)createbackButton {
    
    self.backButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.backButton.frame = CGRectMake(100, 200, self.view.frame.size.width - 200, 40);
    self.backButton.backgroundColor = [UIColor blueColor];
    [self.backButton setTitle:@"返回" forState:UIControlStateNormal];
    [self.view addSubview:self.backButton];
    [self.backButton addTarget:self action:@selector(backButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)backButtonAction:(UIButton *)backButton {
    
    [self.delegate addTextFieldToLabel:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)addLabelToTextField:(NSString *)label {

    NSLog(@"%@",label);
    self.textField.text = label;

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
