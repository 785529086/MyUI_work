//
//  ViewController.m
//  UI04_Homework(1)
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"
@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self lightGame];

    
    

}


- (void)lightGame {

    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 15 ; j++) {
            TouchView *view = [[TouchView alloc] initWithFrame:CGRectMake(
            (self.view.frame.size.width - 24) / 10 * i + (24/9.0*i),
            ( self.view.frame.size.height - 15)/ 15 * j + (15/14.0*j),
            (self.view.frame.size.width - 24) / 10,
            ( self.view.frame.size.height - 15)/ 15)];
            
            [self.view addSubview:view];
            
            view.tag = i + j;
            
            view.backgroundColor = [UIColor blackColor];
            [view release];
            
        }
    }

}




- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    touch.view.backgroundColor = [UIColor redColor];
 


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
