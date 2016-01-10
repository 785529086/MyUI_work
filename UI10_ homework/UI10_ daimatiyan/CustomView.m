//
//  CustomView.m
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/26.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()<UITextFieldDelegate>


@property (nonatomic, retain) UIImageView *photoOfPerson;
@property (nonatomic, retain) UIImageView *imageView;


@end


@implementation CustomView


- (void)dealloc {
    
    [_textFieldOfName release];
    [_textFieldOfPhone release];
    [_textFieldOfHobby release];
    [_photoOfPerson release];
    [_imageView release];
    [super dealloc];
    
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self createFourImageView:frame];
        [self createThirdTextField:frame];
        [self createPhotoOfPerson:frame];
    }
    return self;
}

- (void)createFourImageView:(CGRect)frame {
    
    for (int i = 1; i < 4; i ++) {
        NSString *str = [NSString stringWithFormat:@"%d",i];
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:str]];
        self.imageView.frame = CGRectMake(50,300 + 100 * i, 50, 50);
        [self addSubview:self.imageView];
        [_imageView release];
        
    }
}

- (void)createThirdTextField:(CGRect)frame {
    
        self.textFieldOfName = [[UITextField alloc] initWithFrame:CGRectMake(150, 400 , 200, 50)];
        [self addSubview: self.textFieldOfName];
        self.textFieldOfName.backgroundColor = [UIColor whiteColor];
        self.textFieldOfName.borderStyle = UITextBorderStyleRoundedRect;
        self.textFieldOfName.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textFieldOfName.returnKeyType = UIReturnKeyNext;
        self.textFieldOfName.delegate = self;
        [_textFieldOfName release];
    
    self.textFieldOfPhone = [[UITextField alloc] initWithFrame:CGRectMake(150, 500 , 200, 50)];
    [self addSubview: self.textFieldOfPhone];
    self.textFieldOfPhone.backgroundColor = [UIColor whiteColor];
    self.textFieldOfPhone.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldOfPhone.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.textFieldOfPhone.returnKeyType = UIReturnKeyNext;
    self.textFieldOfPhone.delegate = self;
    [_textFieldOfPhone release];
    
    self.textFieldOfHobby = [[UITextField alloc] initWithFrame:CGRectMake(150,600 , 200, 50)];
    [self addSubview: self.textFieldOfHobby];
    self.textFieldOfHobby.backgroundColor = [UIColor whiteColor];
    self.textFieldOfHobby.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldOfHobby.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.textFieldOfHobby.returnKeyType = UIReturnKeyNext;
    self.textFieldOfHobby.delegate = self;
    [_textFieldOfHobby release];

}

- (void)createPhotoOfPerson:(CGRect)frame {
    
    self.photoOfPerson = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"7.jpg"]];
    self.photoOfPerson.frame = CGRectMake(10, 115, frame.size.width - 20, 250);
    self.photoOfPerson.backgroundColor = [UIColor whiteColor];
    self.photoOfPerson.layer.cornerRadius = 2;
    self.photoOfPerson.layer.masksToBounds = YES;
    [self addSubview:self.photoOfPerson];
    [_photoOfPerson release];
    
    
}

 







@end
