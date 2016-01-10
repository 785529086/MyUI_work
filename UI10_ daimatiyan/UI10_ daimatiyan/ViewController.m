//
//  ViewController.m
//  UI10_ daimatiyan
//
//  Created by dllo on 15/12/25.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"

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
    [self createTableView];
    [self tableViewIsEdit];
    [self handleActionAddData];

   
}


- (void)createTableView {

    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    [self.tableView release];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *poolName = @"reuse" ;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:poolName];
    if (cell == nil) {
        
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:poolName]autorelease];
    }
    cell.textLabel.text = [self.arrData objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark 给每行添加数据. 
- (void)handleActionAddData {

    self.arrData = @[@"zhang",@"lisi",@"wangwu"].mutableCopy;

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
            return 2;
            break;
        case 1:
            return 1|2;
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
    NSLog(@"%@",self.arrData);

    /** 对数据源中的数据进行移动操作,实现真正的移动. */
    NSString *str = [[self.arrData objectAtIndex:sourceIndexPath.row] retain];
    [self.arrData removeObjectAtIndex:sourceIndexPath.row];
    [self.arrData insertObject:str atIndex:destinationIndexPath.row];
    [str release];
    
    NSLog(@"%@",self.arrData);
    
}

#pragma mark - 删除操作

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

    /** 1和2 分别表示EditingStyleDelete 和 EditingStyleInsert. */
    if (editingStyle == 1) {
        [self.arrData removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
    }else if (editingStyle == 2){
    
        [self.arrData insertObject:@"zeng" atIndex:indexPath.row];
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    
    }






}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
