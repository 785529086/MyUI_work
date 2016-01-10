//
//  ThirdViewController.m
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/26.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ThirdViewController.h"
#import "DetailView.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createDetailView];
    
}

- (void)createDetailView {

    DetailView *detailView = [[DetailView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:detailView];
    [detailView release];
    detailView.labelOfName.text = [self.detailDic objectForKey:@"name"];
    detailView.labelOfPhone.text = [self.detailDic objectForKey:@"phone"];
    detailView.labelOfHobby.text = [self.detailDic objectForKey:@"hobby"];
    UIImageView *view = [[UIImageView alloc]initWithImage:[UIImage imageNamed: [self.detailDic objectForKey:@"photo"]]];
    view.frame = CGRectMake(10, 115, self.view.frame.size.width - 20, 250);
    view.layer.cornerRadius = 100;
    view.layer.masksToBounds = YES;

    [self.view addSubview:view];
    [view release];
    
//    [detailView.photoOfPerson addSubview:view];

    

    

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
