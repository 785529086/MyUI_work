//
//  CellForTitle.m
//  UI8_homework
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "CellForTitle.h"
#import "ModelForTitle.h"

@interface CellForTitle ()

@property (weak, nonatomic) IBOutlet UILabel *labelOfTitle;
@property (weak, nonatomic) IBOutlet UIImageView *image;


@end

@implementation CellForTitle




- (void)passModel:(ModelForTitle *)model {

    self.labelOfTitle.text = model.image;
    self.image.image = [UIImage imageNamed:model.image];

    
}

+ (CGFloat)heighOfCell:(ModelForTitle *)model {
    
    CGRect rect = [model.title boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20, [UIScreen mainScreen].bounds.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]} context:nil];
    return rect.size.height + 10 + 10 + 100;

}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
