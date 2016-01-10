//
//  ScorllerView.m
//  UI07_homework(2)
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ScorllerView.h"

@interface ScorllerView ()

@property (nonatomic, retain) UIScrollView *scroll;
@property (nonatomic, retain) NSMutableArray *arr;

@end
@implementation ScorllerView

- (instancetype)initWithFrame:(CGRect)frame images:(NSMutableArray <NSString *>*)images {
    self = [super initWithFrame:frame];
    if (self) {
        self.arr = [NSMutableArray array];
        [self createScroll:frame];
        [self createImages:frame];
        
        
    }
    return self;

}

- (void)createScroll:(CGRect)frame {

    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [self addSubview:self.scroll];
    self.scroll.contentSize = CGSizeMake(frame.size.width, frame.size.height * self.arr.count);
    [self.scroll release];
}

- (void)createImages:(CGRect)frame {

    for (int i = 0; i < self.arr.count; i++) {
    
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.arr[i]]];
        image.frame = CGRectMake(0, frame.size.height * i, frame.size.width, frame.size.height);
        [self.scroll addSubview:image];
        [image release];


    }

}


@end
