//
//  ViewController.m
//  UI17_homework
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "ModelForCartoon.h"
#import "ParserSAX.h"
#import "CellForCartoon.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSArray *arr;
@property (nonatomic, retain) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self handleData];
    [self createTableView];
}

- (void)handleData {

    ParserSAX *parser = [[ParserSAX alloc]init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Cartoon" ofType:@"xml"];
    
   self.arr = [parser parserSAXWithFile:path];
    for (ModelForCartoon *cartoon in self.arr) {
        NSLog(@"%@",cartoon.name);
        NSLog(@"%@\n",cartoon.desc);
    }
}

- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CellForCartoon class] forCellReuseIdentifier:@"pool"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return  self.arr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CellForCartoon *cell = [tableView dequeueReusableCellWithIdentifier:@"pool"];
    ModelForCartoon *model = [self.arr objectAtIndex:indexPath.row];
    [cell passValue:model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    ModelForCartoon *model = [self.arr objectAtIndex:indexPath.row];

    return [CellForCartoon heightForCell:model];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
