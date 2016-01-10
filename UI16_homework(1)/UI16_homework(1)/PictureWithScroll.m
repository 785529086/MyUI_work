//
//  PictureWithScroll.m
//  UI16_homework(1)
//
//  Created by dllo on 16/1/4.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "PictureWithScroll.h"


@interface PictureWithScroll ()<UIScrollViewDelegate>

@property (nonatomic, retain) UIScrollView *scroll;
@property (nonatomic, retain) NSMutableArray *arrImages;


@end


@implementation PictureWithScroll

- (instancetype)initWithFrame:(CGRect)frame images:(NSArray *)images {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.arrImages = [NSMutableArray arrayWithArray:images];
        [self.arrImages addObject:[self.arrImages firstObject]];
        [self.arrImages insertObject:[self.arrImages objectAtIndex:self.arrImages.count - 2] atIndex:0];
        [self createScrollView:frame];
    }
    return self;
}


- (void)createScrollView:(CGRect)frame {
    
    self.scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0,-64, frame.size.width, frame.size.height)];
    self.scroll.backgroundColor = [UIColor cyanColor];
    self.scroll.pagingEnabled = YES;
    [self addSubview:self.scroll];
    [_scroll release];
    self.scroll.contentSize = CGSizeMake(frame.size.width * self.arrImages.count, frame.size.height);
    
    NSLog(@"%f, %f", self.scroll.contentSize.width,self.scroll.contentSize.height);
    
    self.scroll.contentOffset = CGPointMake(frame.size.width, 0);
    self.scroll.delegate = self;
    [self createImageViewForScrollView:frame];
  
}

- (void)createImageViewForScrollView:(CGRect)frame {
    
    for (int i = 0; i < 6; i++) {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:self.arrImages[i]]];
        imageView.frame = CGRectMake(frame.size.width * i,0,frame.size.width,frame.size.height);
        [self.scroll addSubview:imageView];
        [imageView release];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    /** 轮播效果 */
    if (scrollView.contentOffset.x == 0) {
        
        [self.scroll setContentOffset:CGPointMake(self.frame.size.width * (self.arrImages.count - 2), 0)];
    }
    
    if (scrollView.contentOffset.x == self.frame.size.width * (self.arrImages.count - 1)) {
        
        [self.scroll setContentOffset:CGPointMake(self.frame.size.width, 0)];
    }
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return scrollView.subviews.firstObject;
    
}


@end
