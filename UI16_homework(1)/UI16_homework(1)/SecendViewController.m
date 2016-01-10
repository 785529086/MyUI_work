//
//  SecendViewController.m
//  UI16_homework(1)
//
//  Created by dllo on 16/1/4.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "SecendViewController.h"
#import "PictureWithScroll.h"
@interface SecendViewController ()<UIScrollViewDelegate>


@property (nonatomic, retain) NSArray *arr;

@end

@implementation SecendViewController

- (void)dealloc {


    [_arr release];
    [super dealloc];


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"第二页";
    [self handleData];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self createScrollView];
    
}

- (void)handleData {
    
        self.arr = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];

}

- (void)createScrollView {

    PictureWithScroll *pic = [[PictureWithScroll alloc]initWithFrame:CGRectMake(0, 0, 300, 400) images:self.arr];
    [self.view addSubview:pic];
    pic.center = self.view.center;
    [pic release];


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
