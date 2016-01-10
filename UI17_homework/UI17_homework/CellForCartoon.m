//
//  CellForCartoon.m
//  UI17_homework
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou.com. All rights reserved.
//


#define WIDTH [UIScreen mainScreen].bounds.size.width

#import "CellForCartoon.h"
#import "ModelForCartoon.h"
@interface CellForCartoon ()

@property (nonatomic, retain) UILabel *labelOfTitle;
@property (nonatomic, retain) UILabel *labelOfContent;

@end

@implementation CellForCartoon

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self createSubViews];
        
    }
    return self;
}

- (void)createSubViews {
    self.labelOfTitle = [[UILabel alloc]init];
    [self addSubview:self.labelOfTitle];
    self.labelOfTitle.backgroundColor = [UIColor cyanColor];
    self.labelOfTitle.textAlignment = 1;
    self.labelOfTitle.font = [UIFont systemFontOfSize:25];


    self.labelOfContent = [[UILabel alloc]init];
    [self addSubview:self.labelOfContent];
    self.labelOfContent.numberOfLines = 0;
    self.labelOfContent.backgroundColor = [UIColor greenColor];

}

- (void)layoutSubviews {

    [super layoutSubviews];
    
    self.labelOfTitle.frame = CGRectMake(10, 0,[UIScreen mainScreen].bounds.size.width - 20, 50);
    self.labelOfContent.frame = CGRectMake(10, 50, WIDTH - 20, [[self class]heightForLabel:self.labelOfContent.text]);

}

- (void)passValue:(ModelForCartoon *)model {

    self.labelOfTitle.text = model.name;
    self.labelOfContent.text = model.desc;
}

+ (CGFloat)heightForLabel:(NSString *)text {

    CGRect rect = [text boundingRectWithSize:CGSizeMake(WIDTH - 20, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil];
    return rect.size.height;
}



+ (CGFloat)heightForCell:(ModelForCartoon *)model {


    CGFloat height = [CellForCartoon heightForLabel:model.desc];
    return height + 50;

}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
