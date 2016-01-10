//
//  ViewController.m
//  UI15_homework
//
//  Created by dllo on 15/12/31.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "ModelOfMovie.h"
#import "CellOfMovie.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSMutableArray *arr;
@property (nonatomic, retain) UITableView *tableView;

@end

@implementation ViewController

- (void)dealloc {

    [_arr release];
    [_tableView release];
    [super dealloc];


}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self handleData];
    [self createTableView];
    
}

- (void)handleData {

    self.arr = [NSMutableArray array];
    /** JSON 文件解析. */
    NSString *path = [[NSBundle mainBundle]pathForResource:@"activitylist" ofType:@"txt"];
    NSLog(@"%@",path);
    
    /** 将路径的文件转化为二进制数据. */
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSLog(@"%@",data);
    
    id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSArray *arr = [result objectForKey:@"events"];
    for (NSDictionary *dic in arr) {
        
        ModelOfMovie *model = [[ModelOfMovie alloc]init];
        [model setValuesForKeysWithDictionary:dic];
        [self.arr addObject:model];
        [model release];
    }
}
- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview: self.tableView];
    [_tableView release];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    /** 注册一个cell.*/
    [self.tableView registerNib:[UINib nibWithNibName:@"CellOfMovie" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"pool"];

    

}

#pragma mark tableView dataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    CellOfMovie *cell = [tableView dequeueReusableCellWithIdentifier:@"pool"];
    NSLog(@"%@",cell);
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
