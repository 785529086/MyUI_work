//
//  ViewController.h
//  UI09_homework(2)
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol Vc1Delegate <NSObject>

- (void)addLabelToTextField:(NSString *)label;

@end

@interface ViewController : UIViewController

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, assign) id<Vc1Delegate> delegate;

@end

