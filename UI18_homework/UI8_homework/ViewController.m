//
//  ViewController.m
//  UI8_homework
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "ModelForTitle.h"
#import "CellForTitle.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSMutableArray *arr;
@property (nonatomic, retain) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self handleData];
    [self createTableView];
 
}

- (void)handleData{

    self.arr = [NSMutableArray array];
    // URL
    NSURL *url = [NSURL URLWithString:@"http://api.m.mtime.cn/News/NewsList.api?pageIndex=1"];
    
    // 创建session对象(通道)
    NSURLSession *session = [NSURLSession sharedSession];
    
    // 创建任务.
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        NSError *errorOfJSON = nil;
        id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&errorOfJSON];
        //NSLog(@"%@",result);
        
        NSDictionary *dicTemp = [NSDictionary dictionaryWithDictionary:result];
        NSArray *arr = [dicTemp objectForKey:@"newsList"];
        for (NSDictionary *dic in arr) {
            ModelForTitle *model = [[ModelForTitle alloc]init];
            [model setValuesForKeysWithDictionary:dic];
            [self.arr addObject:model];
        }
        NSLog(@"%@",self.arr);
        
        [self.tableView reloadData];
    }];
    
    // 开始任务.
    [task resume];
}

- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self;
    
    self.tableView.delegate = self;
    
    //[self.tableView registerClass:[CellForTitle class] forCellReuseIdentifier:@"pool"];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CellForTitle" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"pool"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSLog(@"行数%ld", self.arr.count);
    return self.arr.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CellForTitle *cell = [tableView dequeueReusableCellWithIdentifier:@"pool"];
    ModelForTitle *model = [self.arr objectAtIndex:indexPath.row];
    [cell passModel:model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    ModelForTitle *model = [self.arr objectAtIndex:indexPath.row];
    return [CellForTitle heighOfCell:model];


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
