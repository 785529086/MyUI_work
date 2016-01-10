//
//  ViewController.m
//  UI06_homework
//
//  Created by dllo on 15/12/21.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) UISlider *sliderFirst;
@property (nonatomic, retain) UISlider *sliderScend;
@property (nonatomic, retain) UISlider *sliderThr;
@property (nonatomic, retain) UISlider *slideralpha;
@end

@implementation ViewController


- (void)dealloc {
    [_sliderFirst release];
    [_sliderScend release];
    [_sliderThr release];
    [_slideralpha release];
    [super dealloc];


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createsliderFirst];
    [self createsliderScend];
    [self creatsliderThr];
    [self createslideralpha];
    
    
    
}


- (void)creatsliderThr {
 
    self.sliderThr = [[UISlider alloc] initWithFrame:CGRectMake(50, 300, self.view.frame.size.width - 100, 40)];
    
    [self.view addSubview:self.sliderThr];
    self.sliderThr.minimumTrackTintColor = [UIColor blueColor];
    self.sliderThr.minimumValue = 0;
    self.sliderThr.maximumValue = 1;

    [self.sliderThr release];
    [self.sliderThr addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)createsliderFirst {

    self.sliderFirst = [[UISlider alloc]initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 40)];
    
    [self.view addSubview:self.sliderFirst];
    
    self.sliderFirst.minimumTrackTintColor = [UIColor redColor];
    self.sliderFirst.minimumValue = 0;
    self.sliderFirst.maximumValue = 1;
    
    [self.sliderFirst release];
        [self.sliderFirst addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];


}

- (void)createsliderScend {
    
    self.sliderScend = [[UISlider alloc] initWithFrame:CGRectMake(50,200 , self.view.frame.size.width - 100, 40)];
    
    [self.view addSubview:self.sliderScend];
    self.sliderScend.minimumTrackTintColor = [UIColor yellowColor];
    self.sliderScend.minimumValue = 0;
    self.sliderScend.maximumValue = 1;
    
    [self.sliderScend release];
    [self.sliderScend addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];

}

- (void)createslideralpha {
    self.slideralpha = [[UISlider alloc] initWithFrame:CGRectMake(50,400 , self.view.frame.size.width - 100, 40)];
    
    [self.view addSubview:self.slideralpha];
    self.slideralpha.minimumTrackTintColor = [UIColor orangeColor];
    self.slideralpha.minimumValue = 0;
    self.slideralpha.maximumValue = 1;
    
    [self.slideralpha release];
    [self.slideralpha addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];




}


- (void)sliderAction:(UISlider *)slider {

    self.view.backgroundColor = [UIColor colorWithRed:self.sliderFirst.value green:self.sliderScend.value blue:self.sliderThr.value alpha:self.slideralpha.value];


}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
