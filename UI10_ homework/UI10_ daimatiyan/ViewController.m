//
//  ViewController.m
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/25.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "SecendViewController.h"
#import "ThirdViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,SecendViewDelegate>

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *arrKey;
@property (nonatomic, retain) NSMutableDictionary *dicContacts;

@end

@implementation ViewController

- (void)dealloc {

    [_tableView release];
    [_arrKey release];
    [_dicContacts release];
    [super dealloc];

}

#pragma mark ** 图片加载完事.
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createTableView];
    [self tableViewIsEdit];
    [self handleDataFromPlist];
    self.navigationItem.title = @"ClassContacts";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addAction:)];
   
}


- (void)createTableView {

    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor grayColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
    [self.tableView release];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *poolName = @"reuse" ;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:poolName];
    if (cell == nil) {
        
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:poolName]autorelease];
    }
    
    NSString *key = [self.arrKey objectAtIndex:indexPath.section];
    NSArray *arr = [self.dicContacts objectForKey:key];
    
    NSDictionary *dic = [arr objectAtIndex:indexPath.row];
    cell.textLabel.text = [dic objectForKey:@"name"];

    
    return cell;
}

#pragma mark 数据处理.
- (void)handleDataFromPlist {

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Contacts" ofType:@"plist"];
    self.dicContacts = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    self.arrKey = [NSMutableArray arrayWithArray:[self.dicContacts allKeys].mutableCopy];
    [self.arrKey sortUsingSelector:@selector(compare:)];
    
}

#pragma mark 给每个区添加数据.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.arrKey.count;

}

#pragma mark 给每行添加数据. 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSString *key = [self.arrKey objectAtIndex:section];
    NSArray *arr = [self.dicContacts objectForKey:key];
    return arr.count;

}

#pragma mark 给每个区加个区标题.
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return [self.arrKey objectAtIndex:section];


}

#pragma mark 右侧加个索引.
- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {

    return self.arrKey;

}

#pragma mark - 让TableView 进入编辑状态.
- (void)tableViewIsEdit {

    self.navigationItem.rightBarButtonItem = self.editButtonItem;

}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {

    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:animated];

}

#pragma mark - 确定编辑风格. 
/*typedef NS_ENUM(NSInteger, UITableViewCellEditingStyle) {
 UITableViewCellEditingStyleNone,
 UITableViewCellEditingStyleDelete,
 UITableViewCellEditingStyleInsert
 };
*/

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {

    switch (indexPath.row) {
        case 0:
            return 1;
            break;
        case 1:
            return 1;
        case 2:
            return 1;
        default:
            return UITableViewCellEditingStyleDelete;
            break;
    }
}

#pragma mark - 移动的相关方法.
/** 确定哪些行可以移动. */

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;

}


//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath{}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
//    NSLog(@"%@",self.arrKey);
//
//    /** 对数据源中的数据进行移动操作,实现真正的移动. */
//    NSString *str = [[self.arrKey objectAtIndex:sourceIndexPath.row] retain];
//    [self.arrKey removeObjectAtIndex:sourceIndexPath.row];
//    [self.arrKey insertObject:str atIndex:destinationIndexPath.row];
//    [str release];
//    
//    NSLog(@"%@",self.arrKey);
    
}

#pragma mark - 删除操作
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

//    /** 1和2 分别表示EditingStyleDelete 和 EditingStyleInsert. */
//    if (editingStyle == 1) {
//        [self.arrKey removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
//    }else if (editingStyle == 2){
//    
//        [self.arrKey insertObject:@"zeng" atIndex:indexPath.row];
//         [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    }
    if (editingStyle == 1) {
        NSString *key = [self.arrKey objectAtIndex:indexPath.section];
        NSMutableArray *arr = [self.dicContacts objectForKey:key];
        [arr removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
        
    }
}

#pragma mark - 添加操作
- (void)addAction:(UIBarButtonItem *)button {

    SecendViewController *secend = [[SecendViewController alloc] init];
    [self.navigationController pushViewController:secend animated:NO];
    [secend release];
    secend.delegate = self;

}


#pragma mark 实现SecendViewDelegate方法.
- (void)saveTextFieldOfname:(NSDictionary *)newData {
    
    NSString *str = [[newData objectForKey:@"name"] substringToIndex:1].capitalizedString;
    NSLog(@"%@",str);
    NSMutableArray *marr = [NSMutableArray array];
    
    if ([self.arrKey containsObject:str]) {
        marr = [self.dicContacts objectForKey:str];
        [marr addObject:newData];
    }else {
        
        [self.dicContacts setObject:marr forKey:str];
        [self.arrKey addObject:str];
        [self.arrKey sortUsingSelector:@selector(compare:)];
        [marr addObject:newData];
    }
}

#pragma mark 更新数据.
#pragma mark ** 图片将要展示出来.
- (void)viewWillAppear:(BOOL)animated {

    [self.tableView reloadData];

}

#pragma mark 使用TableDelegate中协议的方法展示每个联系人的详情.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"%ld,%ld",indexPath.section, indexPath.row);
    ThirdViewController *third = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:third animated:NO];
  
    NSString *key = [self.arrKey objectAtIndex:indexPath.section];
    NSArray *arr = [self.dicContacts objectForKey:key];
    third.detailDic = [arr objectAtIndex:indexPath.row];
    
    NSLog(@"%@",third.detailDic);

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
