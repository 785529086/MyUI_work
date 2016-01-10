//
//  TouchView.h
//  UI04_代码练习
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchViewDelegate <NSObject>

- (void)changeBackColor;

@end


@interface TouchView : UIView

@property (nonatomic, retain) UITextField *textField;

@property (nonatomic, assign) id<TouchViewDelegate>dalegate;

@end
