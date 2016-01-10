//
//  ViewController.m
//  UI05_Homework
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "calculatorButton.h"
@interface ViewController ()

@property (nonatomic, retain) UIButton *calculatorButton;
@property (nonatomic, retain) UILabel *calculatorLabel;
@property (nonatomic, retain) NSArray *arr;
@property (nonatomic, assign) float number1;
@property (nonatomic, assign) float number2;
@property (nonatomic, retain) NSMutableString *mStr;
@property (nonatomic, assign) float sum;
@property (nonatomic, retain) NSMutableString *str2;/* 记录四则运算符. */

@end

@implementation ViewController

- (void)dealloc {
    
    [_str2 release];
    [_mStr release];
    [_calculatorButton release];
    [_calculatorLabel release];

    [super dealloc];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    self.mStr = [[NSMutableString alloc]init];
    self.str2 = [[NSMutableString alloc] init];

    [self creatButton];
    [self creatLabel];
    
    
    
    [_mStr release];
    [_str2 release];
   
    
}

- (void)creatCalculator {
    /** 找对象,实现计算. */
  

}

- (void)creatButton {
 
    /** 创建对象. */
    _arr = @[@"C",@"7",@"4",@"1",@"0",@"%",@"8",@"5",@"2",@".",@"x",@"9",@"6",@"3",@"+/-",@"<-",@"-",@"+",@"()",@"="];
    
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 5; j++) {
            self.calculatorButton = [UIButton buttonWithType:UIButtonTypeSystem];
            self.calculatorButton.frame = CGRectMake(90 * i + 35,90 * j + 250 ,65,65);
            self.calculatorButton.backgroundColor = [UIColor orangeColor];
            self.calculatorButton.titleLabel.font = [UIFont systemFontOfSize:30];
            [self.calculatorButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [self.calculatorButton.layer setCornerRadius:10];
            
            
            [self.calculatorButton setTitle:_arr[5 * i + j] forState:UIControlStateNormal];
            

            self.calculatorButton.tag = 5 * i + j;
            
            [self.calculatorButton addTarget:self action:@selector(handleAction:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:self.calculatorButton];
            
            if (i < 3 && j > 0) {
                self.calculatorButton.backgroundColor = [UIColor grayColor];
            }
            
            [self.calculatorButton release];
        }
    }
}

- (void)handleAction:(UIButton *)button {
 
    NSString *str = [NSString stringWithFormat:@"%@",button.currentTitle];
    NSLog(@"str:%@", str);
    
    if ([str isEqualToString:@"0"] || [str isEqualToString:@"2"] ||
        [str isEqualToString:@"3"] || [str isEqualToString:@"4"] ||
        [str isEqualToString:@"5"] || [str isEqualToString:@"6"] ||
        [str isEqualToString:@"7"] || [str isEqualToString:@"8"] ||
        [str isEqualToString:@"9"] || [str isEqualToString:@"1"] ||
        [str isEqualToString:@"."] || [str isEqualToString:@"+/-"]) {
        
       [self.mStr appendString:str];
//        NSLog(@"%@",str);
        self.calculatorLabel.text = self.mStr;
//        NSLog(@"%@",self.mStr);
    }
    
   if ([str isEqualToString:@"+"] || [str isEqualToString:@"-"] ||[str isEqualToString:@"x"] || [str isEqualToString:@"%"]) {
       [self.mStr appendString:str];
       [self.str2 appendString:str];
       self.calculatorLabel.text = self.mStr;
       
     
        _number1 = [self.mStr floatValue];
   
       NSLog(@"num1:%f",_number1);
        [self.mStr setString:@""];
    }
    if ([str isEqualToString:@"="]) {
        _number2 = [self.mStr floatValue];
        NSLog(@"num2:%.2f",_number2);
        NSLog(@"str2:%@",_str2);
       
        if ([self.str2 hasSuffix:@"+"]) {
            _sum = _number1 + _number2;
            NSLog(@"sum:%.2f",_sum);
        
        }if ([self.str2 hasSuffix:@"-"]) {
            _sum = _number1 - _number2;
            
        }if ([self.str2 hasSuffix:@"x"]) {
            _sum = _number1 * _number2;
            
        }if ([self.str2 hasSuffix:@"%"]) {
            _sum = _number1 / _number2;
            
        }
        NSString *str1 = [NSString stringWithFormat:@"%.2f",_sum];
        
        self.calculatorLabel.text = str1;
        [self.mStr setString:@""];
        [self.str2 setString:@""];
    }
}

- (void)creatLabel {
    
    self.calculatorLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,150,self.view.frame.size.width - 40,65)];
    self.calculatorLabel.backgroundColor = [UIColor greenColor];
    
    [self.calculatorLabel.layer setCornerRadius:10];
    [self.view addSubview:self.calculatorLabel];
    [self.calculatorLabel release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
