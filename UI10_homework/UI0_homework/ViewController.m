//
//  ViewController.m
//  UI0_homework
//
//  Created by dllo on 15/12/24.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "SecendViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *arrData;


@end

@implementation ViewController

- (void)dealloc {
    
    [_tableView release];
    [_arrData release];
    [super dealloc];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"首页";
    
     [self handleData];
    [self createTabelView];
   
  
    
}

- (void)createTabelView {

    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self;
    [_tableView release];
    self.tableView.rowHeight = 100;
    
    self.tableView.delegate = self;
    

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.arrData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    NSString *poolName = @"reuse";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:poolName];
    if (nil == cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:poolName]autorelease];
    }
    
    NSDictionary *dic = [self.arrData objectAtIndex:indexPath.row];
    cell.textLabel.text = [dic objectForKey:@"title"];
    cell.detailTextLabel.text = [dic objectForKey:@"detial"];
    cell.imageView.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
    cell.imageView.userInteractionEnabled = YES;

    return cell;
}

- (void)handleData {

                      self.arrData = @[
                                  @{@"title":@"xiaoming",
                                    @"detial":@"male",
                                    @"image":@"1"},
                                  @{@"title":@"qiangqiang",
                                    @"detial":@"female",
                                    @"image":@"2"},
                                  @{@"title":@"shenghao",
                                    @"detial":@"male",
                                    @"image":@"3"}
                                  ].mutableCopy;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {

    NSLog(@"hahah");
    SecendViewController *secend = [[SecendViewController alloc] init];
    [self.navigationController pushViewController:secend animated:YES];
    
    secend.mDic = [self.arrData objectAtIndex:indexPath.row];
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

