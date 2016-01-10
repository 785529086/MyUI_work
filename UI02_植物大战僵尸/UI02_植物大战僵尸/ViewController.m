//
//  ViewController.m
//  UI02_植物大战僵尸
//
//  Created by dllo on 15/12/19.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageBackView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BackGround"]];
    imageBackView.frame = self.view.frame;
    [self.view addSubview:imageBackView];
    [imageBackView release];
    [self creatBZombie];

    [self creatFlower];
    
    [self creatPlants];
}

- (void)creatBZombie {

    /* 创建僵尸. */

        
    UIImageView *bZombie = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BZombie1.tiff"]];
    bZombie.frame = CGRectMake(self.view.frame.size.width - 160, 200, 150, 150);
    [self.view addSubview:bZombie];
        [bZombie release];
        
    NSMutableArray *mArr = [NSMutableArray array];
    for (int i = 1; i < 26; i++) {
        NSString *name = [NSString stringWithFormat:@"BZombie%d.tiff",i];
        UIImage *image = [UIImage imageNamed:name];
        [mArr addObject:image];
    }
    
    bZombie.animationImages = mArr;
    bZombie.animationDuration = 3;
    bZombie.animationRepeatCount = 2;
    [bZombie startAnimating];
    

    [UIView animateWithDuration:10 animations:^{
        bZombie.frame = CGRectMake(-150, 200, 150, 150);
    }];
    

}

- (void)creatFlower {

    UIImageView *flower = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"flower1.tiff"]];
    flower.frame = CGRectMake(100, 240, 100, 100);
    [self.view addSubview:flower];
    
    NSMutableArray *mArr = [NSMutableArray array];
    
    for (int i = 1; i < 19; i++) {
        NSString *name = [NSString stringWithFormat:@"flower%d.tiff",i];
        UIImage *image = [UIImage imageNamed:name];
        [mArr addObject:image];
    }
    flower.animationImages = mArr;
    flower.animationDuration = 10;
    flower.animationRepeatCount = 22;
    [flower startAnimating];

}

- (void)creatPlants {


    UIImageView *gua = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gua1.tiff"]];
    gua.frame = CGRectMake(100, 300, 150, 150);
    [self.view addSubview:gua];
    
    
    NSMutableArray *mArr = [NSMutableArray array];
    for (int i = 1; i < 17; i++) {
        NSString *name = [NSString stringWithFormat:@"gua%d.tiff",i];
        UIImage *image = [UIImage imageNamed:name];
        [mArr addObject:image];
    }
    gua.animationImages = mArr;
    gua.animationDuration = 5;
    gua.animationRepeatCount = 2;
    [gua startAnimating];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
