//
//  AppDelegate.m
//  UI02_代码练习
//
//  Created by dllo on 15/12/15.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate () <UITextFieldDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    
    UIViewController *vc = [[UIViewController alloc] init];
    self.window.rootViewController = vc;
    [self labelView];
    [self textFieldView];
    [self buttonView];
    
    [vc release];
    [_window release];
    
    
    
    return YES;
}
#pragma mark - 知识点1: UIlabel
- (void)labelView {
    UILabel *label_name = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 80, 50)];
    label_name.backgroundColor = [UIColor whiteColor];
    UILabel *label_key = [[UILabel alloc] initWithFrame:CGRectMake(50, 150, 80, 50)];
    label_key.backgroundColor = [UIColor whiteColor];
    
    [self.window addSubview:label_name];
    [self.window addSubview:label_key];
    
    [label_key release];
    [label_name release];
    
    label_name.text = @"用户名:";
    label_key.text =@"密码:";
    
    label_name.textAlignment = NSTextAlignmentCenter;
    label_key.textAlignment = NSTextAlignmentCenter;
    
    label_name.font = [UIFont systemFontOfSize:20];
    label_key.font = [UIFont systemFontOfSize:20];
    
    label_name.shadowOffset = CGSizeMake(1, 1);
    label_key.shadowOffset = CGSizeMake(1, 1);
    
    label_name.shadowColor = [UIColor redColor];
    label_key.shadowColor = [UIColor blueColor];
    

}
#pragma mark - 知识点2: UItextFieldView
- (void)textFieldView {
    UITextField *textField_name = [[UITextField alloc] initWithFrame:CGRectMake(150, 50, 150, 50)];
    textField_name.tag = 100;
    
    UITextField *textField_key = [[UITextField alloc] initWithFrame:CGRectMake(150, 150, 150, 50)];
    textField_key.tag = 200;

    [self.window addSubview:textField_name];
    [self.window addSubview:textField_key];
    
    [textField_name release];
    [textField_key release];
    
    textField_name.backgroundColor = [UIColor whiteColor];
    textField_key.backgroundColor = [UIColor whiteColor];
    
    textField_name.borderStyle = UITextBorderStyleRoundedRect;
    textField_key.borderStyle = UITextBorderStyleBezel;
    
    textField_name.placeholder = @"请输入用户名";
    textField_key.placeholder = @"请输入密码";
    
    textField_key.secureTextEntry = YES;
    
    textField_name.keyboardType = UIKeyboardAppearanceAlert;
    textField_key.keyboardType = UIKeyboardAppearanceDark;
    
    textField_name.keyboardAppearance = UIKeyboardAppearanceDark;
    textField_key.keyboardAppearance = UIKeyboardAppearanceLight;
    
    textField_name.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField_key.clearButtonMode = UITextFieldViewModeAlways;
    
    textField_name.returnKeyType = UIReturnKeyNext;
    textField_key.returnKeyType = UIReturnKeyDefault;

    textField_name.delegate = self;
    textField_key.delegate = self;
    
}
#pragma mark ** 父类的一些方法的改写,当某种时候触发就调用
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSLog(@"%d,%s",__LINE__,__FUNCTION__);
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSLog(@"%d,%s",__LINE__,__FUNCTION__);
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
   NSLog(@"%d,%s",__LINE__,__FUNCTION__);
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
  NSLog(@"%d,%s",__LINE__,__FUNCTION__);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
//    UITextField *tf_name = [self.window viewWithTag:100];
    UITextField *tf_key = [self.window viewWithTag:200];
    if (textField.returnKeyType == UIReturnKeyNext) {
        [textField resignFirstResponder];
        [tf_key becomeFirstResponder];
    }else{
        [textField resignFirstResponder];
//        [tf_name becomeFirstResponder];/*删掉此句,键盘直接回收*/
    }
    
    return YES;
}


//- (BOOL)textFieldShouldClear:(UITextField *)textField {
// NSLog(@"00000%d,%s",__LINE__,__FUNCTION__);
//    return YES;
//}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if (range.location > 7) {
        return NO;
    }
    if ([string isEqualToString:@"1"]) {
        return NO;
    }
    return YES;
}

#pragma mark - 知识点3 :UIButton
- (void)buttonView {
    UIButton *button_Yes = [UIButton buttonWithType:UIButtonTypeSystem];
    UIButton *button_No = [UIButton buttonWithType:UIButtonTypeSystem];
    
  
    button_Yes.frame = CGRectMake(80, 250, 50, 50);
    button_No.frame = CGRectMake(180, 250, 50, 50);
    
    [self.window addSubview:button_Yes];
    [self.window addSubview:button_No]; 
    
    button_Yes.backgroundColor = [UIColor redColor];
    button_No.backgroundColor = [UIColor redColor];
    
    [button_Yes setTitle:@"确定" forState:UIControlStateNormal];
    [button_No setTitle:@"取消" forState:UIControlStateNormal];
    
    [button_Yes setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_No setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    [button_Yes addTarget:self action:@selector(handleAction:) forControlEvents:UIControlEventTouchUpInside];
    


}

- (void)handleAction:(UIButton *)button {
    UITextField *tf_name = [self.window viewWithTag:100];
    UITextField *tf_key = [self.window viewWithTag:200];
    
    [self.window endEditing:YES];
    
    
    if ([tf_name.text isEqualToString:@"Tom"]  && [tf_key.text isEqualToString:@"234567"]) {
        NSLog(@"输入正确");
    }else{
        NSLog(@"请重新输入");
    }

}


#pragma mark - 知识点4 UIImageView



- (void)dealloc {
    [_window release];
    [super dealloc];

}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
