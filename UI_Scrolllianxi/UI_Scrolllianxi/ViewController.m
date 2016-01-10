//
//  ViewController.m
//  UI_Scrolllianxi
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "CellView.h"
@interface ViewController ()

@property (nonatomic, retain) UIScrollView *scroll;


@end

@implementation ViewController


- (void)dealloc {

    [_scroll release];
    [super dealloc];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createScrollView];
    [self createCustomView];
    
    
    
    
}

- (void)createScrollView {
    self.scroll = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.scroll];
    self.scroll.backgroundColor = [UIColor whiteColor];
    self.scroll.contentSize = CGSizeMake(300 * 10, self.view.frame.size.height);
    
    [_scroll release];
 
}

- (void)createCustomView {

    for (int i = 0; i < 10; i ++) {
        CellView *cell = [[CellView alloc] initWithFrame:CGRectMake(50, 100, 300 * i,400)];
        [self.scroll addSubview:cell];
        cell.backgroundColor = [UIColor blackColor];
        [cell release];

    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
