//
//  CellForCartoon.h
//  UI17_homework
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ModelForCartoon;

@interface CellForCartoon : UITableViewCell

- (void)passValue:(ModelForCartoon *)model;

+ (CGFloat)heightForCell:(ModelForCartoon *)model;

@end
