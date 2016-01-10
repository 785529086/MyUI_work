//
//  CreatNewView.m
//  UI07_homework(2)
//
//  Created by dllo on 15/12/22.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CreatNewView.h"

@implementation CreatNewView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"6.jpg"]];
        self.imageView.frame = CGRectMake(0, 0, frame.size.width * 2 / 5, frame.size.height);
        [self addSubview:self.imageView];
        [_imageView release];
        
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width * 2 / 5 + 10, 10, 200, 40)];
        self.nameLabel.text = @"zhang";
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        self.nameLabel.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.nameLabel];
        [_nameLabel release];
        
        
        self.phoneLabel = [[UILabel alloc]initWithFrame:CGRectMake(frame.size.width * 2 / 5 + 10, frame.size.height - 60 , 200, 40)];
        self.phoneLabel.text = @"1394403053";
        self.phoneLabel.textAlignment = NSTextAlignmentCenter;
        self.phoneLabel.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.phoneLabel];
        [_phoneLabel release];
      
    }
    return self;
}


@end
