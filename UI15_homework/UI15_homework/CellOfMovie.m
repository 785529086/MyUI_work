//
//  CellOfMovie.m
//  UI15_homework
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "CellOfMovie.h"

@interface CellOfMovie ()
@property (retain, nonatomic) IBOutlet UIView *backView;
@property (retain, nonatomic) IBOutlet UILabel *title;
@property (retain, nonatomic) IBOutlet UIView *viewWhite;


@end
@implementation CellOfMovie

- (void)layoutSubviews {

    self.backView.layer.cornerRadius = 20;
    self.viewWhite.layer.cornerRadius = 10;





}




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_backView release];
    [_title release];
    [_viewWhite release];
    [super dealloc];
}
@end
