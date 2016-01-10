//
//  ViewController.h
//  first iOS pragram
//
//  Created by dllo on 15/12/12.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/*声明一个方法来监听按钮点击*/
- (IBAction)jisuan ;
/*声明两个属性用来保存2个文本输入框*/
@property (nonatomic, weak) IBOutlet UITextField *num1;
@property (nonatomic, weak) IBOutlet UITextField *num2;
@property (nonatomic, weak) IBOutlet UILabel *result;

@end

