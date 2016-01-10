//
//  CustomOfCell.h
//  UI13_TableView代码练习1
//
//  Created by dllo on 15/12/29.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ModelOfNews;

@interface CustomOfCell : UITableViewCell

- (void)passModel:(ModelOfNews *)model;

+ (CGFloat)heightForCell:(ModelOfNews *)model;

@end
