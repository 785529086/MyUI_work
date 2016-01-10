//
//  ViewController.m
//  LighOffGame
//
//  Created by dllo on 15/12/20.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "ImageView.h"
@interface ViewController ()<image_viewDelegate>

@end

@implementation ViewController

- (void)dealloc {


    [super dealloc];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    [self creatView];
 
    
}

- (void)creatView {

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
           ImageView *image_view = [[ImageView alloc] initWithFrame:CGRectMake(i * 80 + 10, j * 80 + 200, 70, 70)];
            [self.view addSubview:image_view];
            
            image_view.backgroundColor = [UIColor blueColor];
            image_view.tag = 10 + 10 * i + j;/** tag 的默认值为0, 能将VC 视图调出来. */
            
            image_view.delegate = self;
           [image_view release];
        }
    }
}

- (void)changeBackColor:(ImageView *)image_view {

//    [self reverseColor:[self.view viewWithTag:image_view.tag]];
    [self reverseColor:image_view];
    [self reverseColor:[self.view viewWithTag:image_view.tag - 1]];
    [self reverseColor:[self.view viewWithTag:image_view.tag + 1]];
    [self reverseColor:[self.view viewWithTag:image_view.tag - 10]];
    [self reverseColor:[self.view viewWithTag:image_view.tag + 10]];

}
- (void)reverseColor:(ImageView *)image_view {
    
    if (image_view.backgroundColor == [UIColor blueColor]) {
       image_view.backgroundColor = [UIColor redColor];
    }else {
        image_view.backgroundColor = [UIColor blueColor];
    }
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
