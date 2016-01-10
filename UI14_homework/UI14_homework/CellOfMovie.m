//
//  CellOfMovie.m
//  UI14_homework
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CellOfMovie.h"

@interface CellOfMovie ()
@property (retain, nonatomic) IBOutlet UILabel *labelOfTitle;
@property (retain, nonatomic) IBOutlet UILabel *labelOfTime;
@property (retain, nonatomic) IBOutlet UILabel *labelOfLocation;
@property (retain, nonatomic) IBOutlet UILabel *labelOftype;
@property (retain, nonatomic) IBOutlet UILabel *labelOfDetail;
@property (retain, nonatomic) IBOutlet UIImageView *imageViewOfMovie;



@end



@implementation CellOfMovie

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)layoutSubviews {

    [super layoutSubviews];
//    self.frame = [UIScreen mainScreen].bounds;
}





- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_labelOfTitle release];
    [_labelOfTime release];
    [_labelOfLocation release];
    [_labelOftype release];
    [_imageViewOfMovie release];
    [_labelOfDetail release];
    [super dealloc];
}
@end
