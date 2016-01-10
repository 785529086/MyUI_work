//
//  SecendViewController.m
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/25.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "SecendViewController.h"
#import "CustomView.h"

@interface SecendViewController ()<UITextFieldDelegate>



@end

@implementation SecendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createCustomView];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveAction:)];

    
    
}
#pragma mark 创建一个自定义视图.
- (void)createCustomView {

    CustomView *customView = [[CustomView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:customView];
    customView.tag = 100;
    customView.textFieldOfName.delegate = self;
    customView.textFieldOfPhone.delegate = self;
    customView.textFieldOfHobby.delegate = self;
    [customView release];

}

#pragma mark 输入时界面向上移. 
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{

    [UIView animateWithDuration:0.25 animations:^{
        [self.view viewWithTag:100].frame = CGRectMake(0, -200, self.view.frame.size.width, self.view.frame.size.height);}];
    return YES;
}

#pragma mark 键盘回收. 
- (BOOL)textFieldShouldReturn:(UITextField *)textField {

    [textField resignFirstResponder];
    return YES;

}

#pragma mark 实现保存新建联系人信息.
- (void)saveAction:(UIBarButtonItem *)save {

    [self.navigationController popViewControllerAnimated:YES];
    
    NSMutableDictionary *newDic = [NSMutableDictionary dictionary];
    
    /** 给字典添加3个键值对. 分别是name, phone, hobby. */
    NSString *key = [NSString stringWithFormat:@"name"];
    CustomView *custom = [self.view viewWithTag:100];
    NSString *name = custom.textFieldOfName.text;
    [newDic setObject:name forKey:key];
    
    key = [NSString stringWithFormat:@"phone"];
    NSString *phone = custom.textFieldOfPhone.text;
    [newDic setObject:phone forKey:key];
    
    key = [NSString stringWithFormat:@"hobby"];
    NSString *hobby = custom.textFieldOfHobby.text;
    [newDic setObject:hobby forKey:key];
    
    NSLog(@"%@",newDic);
    

    [self.delegate saveTextFieldOfname:newDic];
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
