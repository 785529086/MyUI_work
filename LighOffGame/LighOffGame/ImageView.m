//
//  ImageView.m
//  LighOffGame
//
//  Created by dllo on 15/12/20.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ImageView.h"

@implementation ImageView

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.delegate changeBackColor:self];

}



@end
