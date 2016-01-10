//
//  UILabeelOfButton.m
//  UI04_Homework(03)
//
//  Created by dllo on 15/12/17.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "UILabeelOfButton.h"

@implementation UILabeelOfButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.button = [UIButton buttonWithType:UIButtonTypeSystem];
        self.button.frame = frame;
        [self addSubview:self.button];
        
        [self.button setTitle:@"这是个按钮" forState:UIControlStateNormal];
        [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

        
        
    }
    return self;
}





@end
