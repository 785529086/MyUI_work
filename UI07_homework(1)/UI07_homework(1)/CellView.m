//
//  CellView.m
//  UI07_homework(1)
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CellView.h"



@interface CellView ()

@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UILabel *nameLabel;
@property (nonatomic, retain) UILabel *phoneNumberLabel;
@property (nonatomic, retain) UIView *view;

@end




@implementation CellView
- (void)dealloc {

    [_imageView release];
    [_nameLabel release];
    [_phoneNumberLabel release];
    [_view release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {

        
        self.imageView = [[UIImageView alloc] init];
        self.imageView.frame = CGRectMake(0, 0, frame.size.width * 2 / 5, frame.size.height);
        [self addSubview:self.imageView];
        
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 2 / 5  + 10, 10, frame.size.width * 3 / 5 - 10 , frame.size.height / 2 - 20)];
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        self.nameLabel.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.nameLabel];
        
        
        self.phoneNumberLabel = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 2 / 5 + 10, frame.size.height / 2 + 10, frame.size.width * 3 / 5 - 10, frame.size.height / 2 - 20)];
        self.phoneNumberLabel.textAlignment = NSTextAlignmentCenter;
        self.phoneNumberLabel.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.phoneNumberLabel];
        
        
        self.view = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height, frame.size.width, 1)];
        self.view.backgroundColor = [UIColor blackColor];
        [self addSubview:self.view];
        
        [_imageView release];
        [_nameLabel release];
        [_phoneNumberLabel release];
        [_view release];
        
    }
    return self;

}


@end
