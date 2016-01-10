//
//  UISliderView.m
//  UI06_homework
//
//  Created by dllo on 15/12/21.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "UISliderView.h"


@interface UISliderView ()
@property (nonatomic, retain) UISlider *slider;
@end


@implementation UISliderView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        self.slider = [[UISlider alloc] initWithFrame:CGRectMake(frame.size.width - 100, frame.size.height - 400, 300, 40)];
    
        
    }
    return self;


}

@end
