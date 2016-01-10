//
//  ViewController.m
//  UI14_homework
//
//  Created by dllo on 15/12/30.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "CellOfMovie.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSArray *arr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self createTableView];
    [self handleData];
    
}


- (void)handleData {

    self.arr = @[@"罗马与巴洛克艺术",@"夜半歌声"];

}

- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    [_tableView release];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    UINib *nib = [UINib nibWithNibName:@"CellOfMovie" bundle:[NSBundle mainBundle]];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"pool"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CellOfMovie *cell = [tableView dequeueReusableCellWithIdentifier:@"pool"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 300;

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
