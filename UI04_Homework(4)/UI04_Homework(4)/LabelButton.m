//
//  LabelButton.m
//  UI04_Homework(4)
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "LabelButton.h"

@implementation LabelButton

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        
        self.labelButton = [UIButton buttonWithType:UIButtonTypeSystem];
        
        self.labelButton.frame = self.frame;
        [self.labelButton setTitle:@"按钮" forState:UIControlStateNormal];
        self.labelButton.titleLabel.font = [UIFont systemFontOfSize:30];
        [self addSubview:self.labelButton];
        
    }
    return self;

}


@end
