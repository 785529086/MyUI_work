//
//  LabelButton.h
//  UI04_Homework(4)
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchDelegate <NSObject>

- (void)changeBackColor;

@end
@interface LabelButton : UIView


@property (nonatomic, retain) UIButton *labelButton;

@property (nonatomic, assign) id<TouchDelegate>delegate;

@end
