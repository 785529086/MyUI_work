//
//  LTView.m
//  UI03_HomeWork(1)
//
//  Created by dllo on 15/12/16.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "LTView.h"



@implementation LTView

- (void)dealloc {
    [_labelOfleft release];
    [_textFieldOfright release];
    [super dealloc];

}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.labelOfleft.frame = CGRectMake(0, 0, self.frame.size.width / 3, self.frame.size.height);
        self.textFieldOfright.frame = CGRectMake(self.frame.size.width / 3, 0, self.frame.size.width * 2 / 3, self.frame.size.height);
    }
    
    
    
    return self;
}


@end
