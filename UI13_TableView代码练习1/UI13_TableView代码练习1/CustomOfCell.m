//
//  CustomOfCell.m
//  UI13_TableView代码练习1
//
//  Created by dllo on 15/12/29.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CustomOfCell.h"
#import "ModelOfNews.h"

@interface CustomOfCell ()

@property (nonatomic, retain) UILabel *labelOfTitle;
@property (nonatomic, retain) UILabel *labelOfSummary;

@end

@implementation CustomOfCell

- (void)dealloc {
    [_labelOfSummary release];
    [_labelOfTitle release];
    [super dealloc];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        
        NSLog(@"初始化    %s, %d",__FUNCTION__, __LINE__);
    }
    return self;
}

/** 创建两个子控件. */
- (void)createSubViews {

    self.labelOfTitle = [[UILabel alloc]init];
    [self.contentView addSubview:self.labelOfTitle];
    [_labelOfTitle release];
    self.labelOfTitle.numberOfLines = 0;
    
    self.labelOfSummary = [[UILabel alloc]init];
    [self.contentView addSubview:self.labelOfSummary];
    [_labelOfSummary release];
    self.labelOfSummary.numberOfLines = 0;

}

- (void)layoutSubviews {
    
         NSLog(@"布局子视图    %s, %d",__FUNCTION__, __LINE__);

    /** 子控件的布局. */
    self.labelOfTitle.frame = CGRectMake(10, 10, self.frame.size.width - 20, 50);
    self.labelOfSummary.frame = CGRectMake(10, 10 + 50 + 10, self.frame.size.width - 20, [[self class] heightForLabel:self.labelOfSummary.text]);
    

}
+ (CGFloat)heightForLabel:(NSString *)text {

    CGRect rect = [text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20 , 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil];

    return rect.size.height;

}



+ (CGFloat)heightForCell:(ModelOfNews *)model {
    
    CGRect rect = [model.summary boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17] }context:nil];
     NSLog(@"高度传值    %s, %d",__FUNCTION__, __LINE__);
    return rect.size.height + 10 + 50 + 10 + 10;
}



/**  给将model的值传到cell的两个子控件上. . */
- (void)passModel:(ModelOfNews *)model {

         NSLog(@"cell赋值    %s, %d",__FUNCTION__, __LINE__);
    self.labelOfTitle.text = model.title;
    self.labelOfSummary.text = model.summary;

}









- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
