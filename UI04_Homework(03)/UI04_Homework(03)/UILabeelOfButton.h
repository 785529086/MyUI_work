//
//  UILabeelOfButton.h
//  UI04_Homework(03)
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ButtonDelegate <NSObject>

- (void)printButton;

@end

@interface UILabeelOfButton : UIView
@property (nonatomic, retain) UIButton *button;
@property (nonatomic, assign) id <ButtonDelegate>delegate;
@end
