//
//  LightView.h
//  周四3关灯游戏
//
//  Created by dllo on 15/12/18.
//  Copyright © 2015年 dilo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LightView;

@protocol LightViewDelegate <NSObject>

- (void)changeColor:(LightView *)view;

@end



@interface LightView : UIView



@property (nonatomic, assign) id<LightViewDelegate> delegate;






@end
