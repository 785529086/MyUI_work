//
//  SecendViewController.h
//  UI09_homework
//
//  Created by dllo on 15/12/23.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Vc2Delegate <NSObject>

- (void)addTextFieldToLabel:(NSString *)textOfTextField;

@end


@interface SecendViewController : UIViewController

@property (nonatomic, assign) id<Vc2Delegate>delegate;

@property (nonatomic, retain) NSString *strReceive;

@end
