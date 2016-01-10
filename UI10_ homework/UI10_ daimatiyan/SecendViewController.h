//
//  SecendViewController.h
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/25.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecendViewDelegate <NSObject>

- (void)saveTextFieldOfname:(NSDictionary *)newData;

@end

@interface SecendViewController : UIViewController

@property (nonatomic, assign) id<SecendViewDelegate>delegate;

@end
