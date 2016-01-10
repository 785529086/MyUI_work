//
//  ViewController.m
//  UI18_homework(1)
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "DataForURL.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DataForURL *data = [[DataForURL alloc]init];
    self.delegate = data;
   id result = [data handleData:@" http://api.m.mtime.cn/News/NewsList.api?pageIndex=1"];
    NSLog(@"%@",result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
