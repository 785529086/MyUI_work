//
//  CellForTitle.h
//  UI8_homework
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ModelForTitle;

@interface CellForTitle : UITableViewCell

- (void)passModel:(ModelForTitle *)model;

+ (CGFloat)heighOfCell:(ModelForTitle *)model;

@end
