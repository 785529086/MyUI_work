//
//  ViewController.h
//  UI04_Homework(1)
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchViewDelegate <NSObject>

- (void)changeBackColor;

@end

@interface ViewController : UIViewController

@property (nonatomic, assign) id<TouchViewDelegate>delegate;

@end

