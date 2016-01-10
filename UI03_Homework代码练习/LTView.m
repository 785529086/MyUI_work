//
//  LTView.m
//  UI03_Homework代码练习
//
//  Created by dllo on 15/12/16.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "LTView.h"

@implementation LTView

- (void)dealloc {
    [_labelOfleft release];
    [_textFieldOfRight release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.labelOfleft = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width / 3, frame.size.height)];
        self.textFieldOfRight = [[UITextField alloc] initWithFrame:CGRectMake(frame.size.width / 3, 0, frame.size.width * 2 / 3 , frame.size.height)];
        
        [self addSubview:self.labelOfleft];
        [self addSubview:self.textFieldOfRight];
        
        [self.labelOfleft release];
        [self.textFieldOfRight release];
        
        self.textFieldOfRight.borderStyle = UITextBorderStyleRoundedRect;
        
        
    }
    return self;

}




@end
