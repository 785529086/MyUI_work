//
//  ViewController.m
//  UI16_homework(1)
//
//  Created by dllo on 16/1/4.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "CellOfQQ.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *arrOfData;
@property (nonatomic, retain) NSMutableDictionary *dicOfData;

@end

@implementation ViewController


- (void)dealloc {

    [_arrOfData release];
    [_tableView release];
    [_dicOfData release];
    [super dealloc];

}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self handleData];
    [self createTableView];
    
}

- (void)handleData {
    self.dicOfData = [NSMutableDictionary dictionary];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Contacts" ofType:@"plist"];

    NSMutableDictionary *tempDic = [NSMutableDictionary
    dictionaryWithContentsOfFile:path];
    NSLog(@"%@",tempDic);

}



- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    [_tableView release];

    [self.tableView registerClass:[CellOfQQ class] forCellReuseIdentifier:@"pool"];

}

#pragma mark tableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.arrOfData.count;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CellOfQQ *cell = [tableView dequeueReusableCellWithIdentifier:@"pool"];

    return cell;

}


#pragma mark tableViewDelegate

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
