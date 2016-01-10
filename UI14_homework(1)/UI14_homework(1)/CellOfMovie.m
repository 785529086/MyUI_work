//
//  CellOfMovie.m
//  UI14_homework(1)
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou.com. All rights reserved.
//


#define WIDTH  self.frame.size.width

#import "CellOfMovie.h"

@interface CellOfMovie ()

@property (nonatomic, retain) UILabel *labelOfTitle;
@property (nonatomic, retain) UILabel *labelOfTime;
@property (nonatomic, retain) UILabel *labelOfLocation;
@property (nonatomic, retain) UILabel *labelOfType;
@property (nonatomic, retain) UIImageView *imageViewOfMovie;

@end


@implementation CellOfMovie


- (void)dealloc {

    [_imageViewOfMovie release];
    [_labelOfTitle release];
    [_labelOfTime release];
    [_labelOfLocation release];
    [_labelOfType release];
    [super dealloc];
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createSubViews];
    }
    return self;
}

- (void)createSubViews {

    self.labelOfTitle = [[UILabel alloc]init];
    [self.contentView addSubview:self.labelOfTitle];
    self.labelOfTitle.backgroundColor = [UIColor blueColor];
    [_labelOfTitle release];
    
    self.labelOfTime = [[UILabel alloc]init];
    [self.contentView addSubview:self.labelOfTime];
    self.labelOfTime.backgroundColor = [UIColor grayColor];
    [_labelOfTime release];
    
    self.labelOfLocation = [[UILabel alloc]init];
    [self.contentView addSubview:self.labelOfLocation];
    self.labelOfLocation.backgroundColor = [UIColor grayColor];
    [_labelOfLocation release];
    
    self.labelOfType = [[UILabel alloc]init];
    [self.contentView addSubview:self.labelOfType];
    self.labelOfType.backgroundColor = [UIColor grayColor];
    [_labelOfType release];
    
    self.imageViewOfMovie = [[UIImageView alloc]init];
    [self.contentView addSubview:self.imageViewOfMovie];
    [_imageViewOfMovie release];
    
}

- (void)layoutSubviews {

   
    self.labelOfTitle.frame = CGRectMake(10, 10, WIDTH - 20, 60);
    self.labelOfTime.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)





}






- (void)awakeFromNib {
    // Initialization code
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
