//
//  TouchView.m
//  UI04_代码练习
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "TouchView.h"



@implementation TouchView

- (void)dealloc {
    [_textField release];
    [super dealloc];

}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, frame.size.width / 2, 40)];
        self.textField.borderStyle = 3;
        self.textField.backgroundColor = [UIColor blueColor];
        [self addSubview:self.textField];
        [_textField release];
    }
    return self;

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self.dalegate changeBackColor];
}



@end
