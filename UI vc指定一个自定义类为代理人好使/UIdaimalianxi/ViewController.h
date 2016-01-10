//
//  ViewController.h
//  UIdaimalianxi
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol VcDelegate <NSObject>

- (void)changeBackColor;

@end


@interface ViewController : UIViewController

@property (nonatomic, assign) id<VcDelegate>delegate;


@end

