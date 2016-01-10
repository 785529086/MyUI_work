//
//  ViewController.h
//  UI18_homework(1)
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataForURL;
@protocol DataForURLDelegate <NSObject>

- (id)handleData:(NSString *)string;

@end

@interface ViewController : UIViewController

@property (nonatomic, assign) id<DataForURLDelegate>delegate;

@end

