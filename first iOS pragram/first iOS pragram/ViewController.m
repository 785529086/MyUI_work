//
//  ViewController.m
//  first iOS pragram
//
//  Created by dllo on 15/12/12.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jisuan {
    /* 1. 获得文本输入框的文字 */
    NSString *text1 = self.num1.text;
    NSString *text2 = self.num2.text;
    
    /* 2. 将字符串转为整数 */
    int i = [text1 intValue];
    int j = [text2 intValue];
    NSLog(@"%d",i + j);
    
    /* 3. 将整型通过万能转换公式转换为字符串*/
    self.result.text = [NSString stringWithFormat:@"%d",i + j];
    NSLog(@"==========");
}





@end
