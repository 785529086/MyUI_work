//
//  ScorllViewOfCell.m
//  UI07_homework(1)
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ScorllViewOfCell.h"

@interface ScorllViewOfCell ()

@property (nonatomic, retain) NSMutableArray *marr;
@property (nonatomic, retain) UIScrollView *scroll;
@property (nonatomic, retain) UIPageControl *page;


@end

@implementation ScorllViewOfCell

- (void)dealloc {
    [_marr release];
    [_scroll release];
    [_page release];
    [super dealloc];

}

- (instancetype)initWithFrame:(CGRect)frame images:(NSMutableArray <NSString *>*)images {
    self = [super initWithFrame:frame];
    if (self) {
        self.marr = [NSMutableArray arrayWithArray:images];
        [self createScrollWithFrame:frame];
        [self createImageViewWithFrame:frame];
        
    
    }
    return  self;

}

- (void)createScrollWithFrame:(CGRect)frame {


    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [self addSubview:self.scroll];
    self.scroll.backgroundColor = [UIColor lightGrayColor];
    
    self.scroll.contentSize = CGSizeMake(frame.size.width, frame.size.height * self.marr.count);
    
    [self createImageViewWithFrame:frame];


}

- (void)createImageViewWithFrame:(CGRect)frame {


    for (int i = 0; i < self.marr.count; i++) {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:self.marr[i]]];
        imageView.frame = CGRectMake(0, frame.size.height * self.marr.count, frame.size.width, frame.size.height);
        [imageView release];
    }


}




@end
