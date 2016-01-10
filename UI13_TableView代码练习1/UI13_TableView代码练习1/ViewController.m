//
//  ViewController.m
//  UI13_TableView代码练习1
//
//  Created by dllo on 15/12/29.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "ModelOfNews.h"
#import "CustomOfCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSMutableArray *arrOfmodel;
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

    self.arrOfmodel = [NSMutableArray array];

    NSString *path = [[NSBundle mainBundle]pathForResource:@"news" ofType:@"txt"];
    
    /**创建一个数据对象. */
    NSData *data = [NSData dataWithContentsOfFile:path];
    id result = [NSJSONSerialization JSONObjectWithData:data
    options:NSJSONReadingMutableContainers error:nil];

    /** 取出数组. */
    NSArray *arr = [result objectForKey:@"news"];

    
    /** 遍历数组,将数组中的字典转换为model. */
    for (NSDictionary *dic in arr) {
        ModelOfNews *model = [[ModelOfNews alloc]init];
        [model setValuesForKeysWithDictionary:dic];
        [self.arrOfmodel addObject:model];
        [model release];
    }
}

- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    [_tableView release];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[CustomOfCell class] forCellReuseIdentifier:@"pool"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSLog(@"行数    %s,%d,%ld ",__func__,__LINE__,section);

    return self.arrOfmodel.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    /** 创建一个cell. */
    CustomOfCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pool"];
    
    /** 给cell赋值. */
    ModelOfNews *model = [self.arrOfmodel objectAtIndex:indexPath.row];
    [cell passModel:model];
//    NSLog(@"%@",cell);
    
     NSLog(@" cell   %s,%d,%@",__func__,__LINE__, cell);
    /** 返回一个cell值. */
     return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    ModelOfNews *model = [self.arrOfmodel objectAtIndex:indexPath.row];
     NSLog(@" 高度   %s,%d, %.2f",__func__,__LINE__,[CustomOfCell heightForCell:model]);
    return [CustomOfCell heightForCell:model];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
