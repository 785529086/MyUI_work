//
//  CellView.m
//  UI_Scrolllianxi
//
//  Created by dllo on 15/12/25.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CellView.h"


@interface CellView ()

@property (nonatomic, retain) UIImageView *imageView;

@end

@implementation CellView

- (void)dealloc {
    [_imageView release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self createImageView:frame];
        
    }
    return self;
}

- (void)createImageView:(CGRect)frame {

    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2"]];
    self.imageView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    [self addSubview:self.imageView];
    [_imageView release];
    self.imageView.userInteractionEnabled = YES;

}


@end
