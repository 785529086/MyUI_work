//
//  CustomCell.m
//  UI_12daimalianxi
//
//  Created by dllo on 15/12/28.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CustomCell.h"
#import "ModelOfContact.h"

@interface CustomCell ()

@property (nonatomic, retain) UILabel *labelOfName;
@property (nonatomic, retain) UIImageView *imageOfPhoto;
@end


@implementation CustomCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createSubView];
        
        
     
        
        
    }
    return self;
}

- (void)createSubView {

    self.labelOfName = [[UILabel alloc]init];
    [self.contentView addSubview: self.labelOfName];
    [_labelOfName release];
    
    
    self.imageOfPhoto = [[UIImageView alloc]init];
    [self.contentView addSubview:self.imageOfPhoto];
    [_imageOfPhoto release];

}

- (void)layoutSubviews {

    [super layoutSubviews];

    CGFloat width = self.contentView.frame.size.width;
    CGFloat height = self.contentView.frame.size.height;
    
    self.imageOfPhoto.frame = CGRectMake(10, 10, height - 20, height - 20);
    self.labelOfName.frame = CGRectMake(width - height - 20 - 10, 10, width - (width - height - 20 - 10) - 10 , height - 20);
    
    
}

- (void)passModel:(ModelOfContact *)con {
    
    self.imageOfPhoto.image = [UIImage imageNamed:con.photo];
    self.labelOfName.text = con.name;
   
}

/** 重写setter方法. */
- (void)setCon:(ModelOfContact *)con {

    if (_con != con) {
        [_con release];
        _con = [con retain];
    }
    self.imageOfPhoto.image = [UIImage imageNamed:con.photo];
    self.labelOfName.text = con.name;

}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
