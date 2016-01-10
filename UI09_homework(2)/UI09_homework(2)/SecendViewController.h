//
//  SecendViewController.h
//  UI09_homework(2)
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ViewController.h"

@protocol Vc2Delegate <NSObject>

- (void)addTextFieldToLabel:(NSString *)textOfTextField;

@end


@interface SecendViewController : UIViewController <Vc1Delegate>
@property (nonatomic, assign) id<Vc2Delegate>delegate;


@end
