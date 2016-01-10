//
//  Picture.m
//  UI07_daimalianxi
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "Picture.h"



@interface Picture ()

@property (nonatomic, retain) UIScrollView *scroll;
@property (nonatomic, retain) UIPageControl *page;

@end


@implementation Picture
- (void)dealloc {

    [_scroll release];
    [_page release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
    

    }
    return self;





}



@end
