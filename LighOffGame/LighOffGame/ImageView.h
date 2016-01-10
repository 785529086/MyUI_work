//
//  ImageView.h
//  LighOffGame
//
//  Created by dllo on 15/12/20.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImageView;
@protocol image_viewDelegate <NSObject>

- (void)changeBackColor:(ImageView *)image_view;

@end

@interface ImageView : UIView

@property (nonatomic, assign) id<image_viewDelegate>delegate;

@end
