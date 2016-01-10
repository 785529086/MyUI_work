//
//  LightView.m
//  周四3关灯游戏
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 dilo. All rights reserved.
//

#import "LightView.h"

@implementation LightView


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.delegate changeColor:self];
    
}









/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
