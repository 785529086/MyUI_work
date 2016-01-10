//
//  ViewController.m
//  UI02_homework()
//
//  Created by dllo on 15/12/21.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createTitle];
    [self createActivityIcon];
    
    
    
    
    
    
    
}
- (void)createTitle {

    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.view.frame.size.width, 50)];
    [self.view addSubview:titleLabel];
    [titleLabel release];
    titleLabel.text = @"赵雷2014新专辑《吉姆餐厅》首发演唱                          会,北京站";
    titleLabel.numberOfLines = 2;

}

- (void)createActivityIcon {

    UIImageView *image_view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page.jpg"]];
    image_view.frame = CGRectMake(0, 60, 150, 300);
    [self.view addSubview:image_view];
    
    image_view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3"]];
    image_view.frame = CGRectMake(160, 80, 17, 17);
    [self.view addSubview:image_view];
    UILabel *timelabel = [[UILabel alloc] initWithFrame:CGRectMake(190, 80, self.view.frame.size.width - 190, 17)];
    timelabel.text = @"10-19 18:00 -- 10-19 23:30";
    [self.view addSubview:timelabel];
    
    image_view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1"]];
    image_view.frame = CGRectMake(160, 120, 17, 17);
    [self.view addSubview:image_view];
    timelabel = [[UILabel alloc] initWithFrame:CGRectMake(190, 120, self.view.frame.size.width - 190, 17)];
    timelabel.text = @"赵雷";
    [self.view addSubview:timelabel];
    
    image_view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4"]];
    image_view.frame = CGRectMake(160, 180, 17, 17);
    [self.view addSubview:image_view];
    timelabel = [[UILabel alloc] initWithFrame:CGRectMake(190, 180, self.view.frame.size.width - 190, 17)];
    timelabel.text = @"类型: 音乐";
    [self.view addSubview:timelabel];
    
    image_view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2"]];
    image_view.frame = CGRectMake(160, 220, 17, 17);
    [self.view addSubview:image_view];
    timelabel = [[UILabel alloc] initWithFrame:CGRectMake(190, 220, self.view.frame.size.width - 190, 45)];
    timelabel.text = @"北京 东城区 北京市东城区和平里西街79号糖果大楼三层";
    [self.view addSubview:timelabel];
    timelabel.numberOfLines = 2;
    
    
    
    [image_view release];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
