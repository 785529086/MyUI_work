//
//  ViewController.m
//  UI07_homework(1)
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "CellView.h"
#import "ScorllViewOfCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *marr = [NSMutableArray array];
    for (int i = 0; i < 5; i++) {
        CellView *cellView = [[CellView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        [marr addObject:cellView];
        [cellView release];
        
    }
    ScorllViewOfCell *scorllView = [[ScorllViewOfCell alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) images:marr];
    scorllView.center = self.view.center;
    [self.view addSubview:scorllView];
    [scorllView release];
    
    
    

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
