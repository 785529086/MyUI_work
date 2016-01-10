//
//  ViewController.m
//  UI07_homework(2)
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "CreatNewView.h"

#import "ScorllerView.h"
@interface ViewController ()
@property (nonatomic, retain) NSMutableArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self createNewView];
    ScorllerView *scorll = [[ScorllerView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 400) images:@[@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg"].mutableCopy];
    scorll.center = self.view.center;
    [self.view addSubview:scorll];
    [scorll release];
    
  
}


//-(void)createNewView {
//
//    CreatNewView *newView = [[CreatNewView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 120)];
//    newView.center = self.view.center;
//    [self.arr addObject:newView];
//    
//    CreatNewView *newView1 = [[CreatNewView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 120)];
//    newView.center = self.view.center;
//    [self.arr addObject:newView1];
//    
//    CreatNewView *newView2 = [[CreatNewView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 120)];
//    newView.center = self.view.center;
//    [self.arr addObject:newView2];
//
//
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
