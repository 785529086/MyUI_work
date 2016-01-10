//
//  DetailView.m
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/26.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "DetailView.h"

@interface DetailView ()



@end

@implementation DetailView

- (void)dealloc {
    
    [_labelOfHobby release];
    [_labelOfName release];
    [_labelOfPhone release];
    [_photoOfPerson release];
    [_imageView release];
    [super dealloc];
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createBackGroundView:(frame)];
        [self createThirdImageView:frame];
        [self createThirdLabel:frame];
        [self createScrollView:frame];
        
    }
    return  self;
}

- (void)createThirdImageView:(CGRect)frame {
    
    for (int i = 1; i < 4; i ++) {
        NSString *str = [NSString stringWithFormat:@"%d",i];
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:str]];
        self.imageView.frame = CGRectMake(50,300 + 100 * i, 50, 50);
        [self addSubview:self.imageView];
        [_imageView release];
        
    }
}

- (void)createThirdLabel:(CGRect)frame {
    
    self.labelOfName = [[UILabel alloc] initWithFrame:CGRectMake(150, 400 , 200, 50)];
    [self addSubview: self.labelOfName];
    self.labelOfName.backgroundColor = [UIColor whiteColor];
    self.labelOfName.textAlignment = NSTextAlignmentCenter;
    
    
    self.labelOfPhone = [[UILabel alloc] initWithFrame:CGRectMake(150, 500 , 200, 50)];
    [self addSubview: self.labelOfPhone];
    self.labelOfPhone.backgroundColor = [UIColor whiteColor];
    self.labelOfPhone.textAlignment = NSTextAlignmentCenter;
    
    
    
    self.labelOfHobby = [[UILabel alloc] initWithFrame:CGRectMake(150, 600 , 200, 50)];
    [self addSubview: self.labelOfHobby];
    self.labelOfHobby.backgroundColor = [UIColor whiteColor];
    self.labelOfHobby.textAlignment = NSTextAlignmentCenter;

}

- (void)createBackGroundView:(CGRect)frame {
    UIImageView *backGroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"6.jpg"]];
    backGroundView.frame = frame;
    [self addSubview:backGroundView];
    [backGroundView release];
    
}

- (void)createScrollView:(CGRect)frame {

    
    self.photoOfPerson = [[UIScrollView alloc]initWithFrame:CGRectMake(10, 115, frame.size.width - 20, 250)];

    self.photoOfPerson.backgroundColor = [UIColor whiteColor];
    self.photoOfPerson.layer.cornerRadius = 115;
    self.photoOfPerson.layer.masksToBounds = YES;
    [self addSubview:self.photoOfPerson];
    [_photoOfPerson release];

}








@end
