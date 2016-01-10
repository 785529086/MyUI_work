//
//  RootViewController.m
//  UI03_Homework代码练习
//
//  Created by dllo on 15/12/16.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "RootViewController.h"
#import "LTView.h"
@interface RootViewController ()<UITextFieldDelegate>
//@property (nonatomic,retain)UIImageView *imageViewOne;
//@property (nonatomic, retain)UIImageView *imageViewTwo;
//@property (nonatomic, retain)UIImageView *imageViewThree;

@end

@implementation RootViewController

- (void)dealloc {
//    [_imageViewOne release];
//    [_imageViewThree release];
//    [_imageViewTwo release];
    [super dealloc];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark 第二个界面
    UIImageView *imageViewTwo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2"]];
    imageViewTwo.frame = self.view.frame;
    [self.view addSubview:imageViewTwo];
    imageViewTwo.tag = 200;
    
    
    imageViewTwo.userInteractionEnabled = YES;
    
    LTView *userOfSign = [[LTView alloc] initWithFrame:CGRectMake(50,110, self.view.frame.size.width - 100 , 40)];
    userOfSign.labelOfleft.text = @"用户名:";
    userOfSign.textFieldOfRight.placeholder = @"请输入用户名";
    [imageViewTwo addSubview:userOfSign];
    userOfSign.textFieldOfRight.delegate = self;
    [userOfSign release];
    
    
    LTView *keyOfSign = [[LTView alloc] initWithFrame:CGRectMake(50,160, self.view.frame.size.width - 100 , 40)];
    keyOfSign.labelOfleft.text = @"密码:";
    keyOfSign.textFieldOfRight.placeholder = @"请输入密码";
    [imageViewTwo addSubview:keyOfSign];
    keyOfSign.textFieldOfRight.delegate = self;
    [keyOfSign release];
    
    LTView *sureKeyOfSign = [[LTView alloc] initWithFrame:CGRectMake(50,210, self.view.frame.size.width - 100 , 40)];
    sureKeyOfSign.labelOfleft.text = @"确认密码:";
    sureKeyOfSign.textFieldOfRight.placeholder = @"请再次输入密码";
    [imageViewTwo addSubview:sureKeyOfSign];
    sureKeyOfSign.textFieldOfRight.delegate = self;
    [sureKeyOfSign release];
    
    LTView *phoneOfSign = [[LTView alloc] initWithFrame:CGRectMake(50,260, self.view.frame.size.width - 100 , 40)];
    phoneOfSign.labelOfleft.text = @"手机号:";
    phoneOfSign.textFieldOfRight.placeholder = @"请输入联系方式";
    [imageViewTwo addSubview:phoneOfSign];
    phoneOfSign.textFieldOfRight.delegate = self;
    [phoneOfSign release];
    
    LTView *emailOfSign = [[LTView alloc] initWithFrame:CGRectMake(50,310, self.view.frame.size.width - 100 , 40)];
    emailOfSign.labelOfleft.text = @"邮箱:";
    emailOfSign.textFieldOfRight.placeholder = @"请输入邮箱";
    [imageViewTwo addSubview:emailOfSign];
    emailOfSign.textFieldOfRight.delegate = self;
    [emailOfSign release];
    
    

    
 
    UIButton *downButtonOfSign2 = [UIButton buttonWithType:UIButtonTypeSystem];
    downButtonOfSign2.frame = CGRectMake(self.view.frame.size.width * 2 / 3, 400, 30, 20);
    [downButtonOfSign2 setTitle:@"取消" forState:UIControlStateNormal];
    [downButtonOfSign2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewTwo addSubview:downButtonOfSign2];

    [downButtonOfSign2 addTarget:self action:@selector(returnButtonActionTwo:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *signButton2 = [UIButton buttonWithType:UIButtonTypeSystem];
    signButton2.frame = CGRectMake(self.view.frame.size.width * 1 / 3, 400, 30, 20);
    [signButton2 setTitle:@"注册" forState:UIControlStateNormal];
    [signButton2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewTwo addSubview:signButton2];
    [signButton2 addTarget:self action:@selector(signButtonActionSuccess:) forControlEvents:UIControlEventTouchUpInside];
    
    
#pragma mark 第三个界面
    UIImageView *imageViewThree = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3"]];
    imageViewThree.frame = self.view.frame;
    [self.view addSubview:imageViewThree];
    imageViewThree.tag = 300;
    
    imageViewThree.userInteractionEnabled = YES;
    
    UITextField *tfView = [[UITextField alloc] initWithFrame:CGRectMake(100,300, self.view.frame.size.width - 200, 40)];
    tfView.placeholder = @"请输入电子邮箱";
    [imageViewThree addSubview: tfView];
    tfView.delegate = self;
    [tfView release];
    
    
    UIButton *findButton = [UIButton buttonWithType:UIButtonTypeSystem];
    findButton.frame = CGRectMake(self.view.frame.size.width * 1 / 3,400, 30, 20);
    [findButton setTitle:@"找回" forState:UIControlStateNormal];
    [findButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewThree addSubview:findButton];
    
    [findButton addTarget:self action:@selector(downButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    UIButton *returnButton = [UIButton buttonWithType:UIButtonTypeSystem];
    returnButton.frame = CGRectMake(self.view.frame.size.width * 2 / 3,400, 30, 20);
    [returnButton setTitle:@"取消" forState:UIControlStateNormal];
    [returnButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewThree addSubview:returnButton];
    
    [returnButton addTarget:self action:@selector(returnButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
#pragma mark 第一个界面
    UIImageView *imageViewBackOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"QQ.jpg"]];
    [self.view addSubview:imageViewBackOne];
    imageViewBackOne.frame = self.view.frame;
    imageViewBackOne.tag = 100;
    //    [imageViewBack release];
    
    
    LTView *viewOfUser = [[LTView alloc] initWithFrame:CGRectMake(50, 400, self.view.frame.size.width - 100, 40)];
    LTView *viewOfkey = [[LTView alloc] initWithFrame:CGRectMake(50, 480, self.view.frame.size.width - 100, 40)];
    
    viewOfUser.labelOfleft.text = @"用户名:";
    viewOfkey.labelOfleft.text = @"密码:";
    
    viewOfUser.textFieldOfRight.placeholder = @"请输入用户名";
    viewOfkey.textFieldOfRight.placeholder = @"请输入密码";
    
    [imageViewBackOne addSubview:viewOfkey];
    [imageViewBackOne addSubview:viewOfUser];
    
    viewOfUser.textFieldOfRight.delegate = self;
    viewOfkey.textFieldOfRight.delegate = self;
    
    [viewOfkey release];
    [viewOfUser release];
    
    imageViewBackOne.userInteractionEnabled = YES;
    
    
    UIButton *upButton = [UIButton buttonWithType:UIButtonTypeSystem];
    upButton.frame = CGRectMake(self.view.frame.size.width / 4, 540, 30, 20);
    [upButton setTitle:@"登陆" forState:UIControlStateNormal];
    [upButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [upButton setTintColor:[UIColor whiteColor]];
    
    [imageViewBackOne addSubview:upButton];
    [upButton addTarget:self action:@selector(upButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *downButtonOfSign = [UIButton buttonWithType:UIButtonTypeSystem];
    downButtonOfSign.frame = CGRectMake(self.view.frame.size.width * 2 / 4, 540, 60, 20);
    [downButtonOfSign setTitle:@"找回密码" forState:UIControlStateNormal];
    [downButtonOfSign setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [imageViewBackOne addSubview:downButtonOfSign];
    
    [downButtonOfSign addTarget:self action:@selector(downButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
  
    UIButton *signButton = [UIButton buttonWithType:UIButtonTypeSystem];
    signButton.frame = CGRectMake(self.view.frame.size.width * 3 / 4, 540, 30, 20);
    [signButton setTitle:@"注册" forState:UIControlStateNormal];
    [signButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewBackOne addSubview:signButton];
    [signButton addTarget:self action:@selector(signButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
  
    [imageViewBackOne release];
    [imageViewTwo release];
    [imageViewThree release];
   
}

- (void)returnButtonAction:(UIButton *)button {
    
    NSLog(@"电子邮箱输入错误,请重新输入");
    [self.view insertSubview:[self.view viewWithTag:100] aboveSubview:[self.view viewWithTag:300]];
}

- (void)returnButtonActionTwo:(UIButton *)button {
    
    NSLog(@"该用户已经被注册,请重新输入");
    [self.view insertSubview:[self.view viewWithTag:100] aboveSubview:[self.view viewWithTag:200]];

}

- (void)upButtonAction:(UIButton *)button{

    NSLog(@"登入成功");
}

- (void)downButtonAction:(UIButton *)button {

    NSLog(@"找回密码");
    [self.view insertSubview:[self.view viewWithTag:300] aboveSubview:[self.view viewWithTag:100]];
    
}

- (void)signButtonAction:(UIButton *)button {

    NSLog(@"注册");
    
    [self.view insertSubview:[self.view viewWithTag:200] aboveSubview:[self.view viewWithTag:100]];
    
}

- (void)signButtonActionSuccess:(UIButton *)button {
    NSLog( @"注册成功");

}


#pragma mark 协议方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
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
