//
//  ViewController.m
//  UI_12daimalianxi
//
//  Created by dllo on 15/12/28.
//  Copyright © 2015年 lanou.com. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "ModelOfContact.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSMutableDictionary *dicContact;
@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *arrOfRow;
@end

@implementation ViewController

- (void)dealloc {

    [_dicContact release];
    [_tableView release];
    [_arrOfRow release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self handleData];
    [self createTableView];
}

#pragma mark 首先处理数据. 
- (void)handleData {
    
    self.dicContact = [NSMutableDictionary dictionary];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Contacts" ofType:@"plist"];
    
    NSMutableDictionary *dicTemp = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    
    /** 遍历dicTemp字典,将数据转化成model对象. */
    for (NSString *key in dicTemp) {
        NSArray *arr = [dicTemp objectForKey:key];
        NSMutableArray *mArr = [NSMutableArray array];
        
        for (NSDictionary *dic in arr) {
            ModelOfContact *contact = [[ModelOfContact alloc]init];
            [contact setValuesForKeysWithDictionary:dic];
            [mArr addObject:contact];
            [contact release];
        }
        [self.dicContact setObject:mArr forKey:key];
    }
    self.arrOfRow = [NSMutableArray arrayWithArray:[self.dicContact allKeys]];
    [self.arrOfRow sortUsingSelector:@selector(compare:)];
}

#pragma mark 创建一个tableView视图, 并且注册两个重用池.

- (void)createTableView {

    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    [_tableView release];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"pool1"];
    [self.tableView registerClass:[CustomCell class] forCellReuseIdentifier:@"pool2"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.arrOfRow.count;

}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:  (NSInteger)section {
     NSLog(@"区数: %ld",section);
    
    /** 指各个区中的行数. */
    NSString *key = [self.arrOfRow objectAtIndex:section];
    return [[self.dicContact objectForKey:key] count];
//    return self.arrOfRow.count; /** 区头数 */  ???????????????

  
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld,%ld",indexPath.section, indexPath.row);

       /** 第一个区放 系统创建cell. */
    if (indexPath.section == 0 ) {

        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pool1"];
        
         /** 给cell 赋值. */
    
        NSString *key = [self.arrOfRow objectAtIndex:indexPath.section];
        NSArray *arr = [self.dicContact objectForKey:key];
        ModelOfContact *contact = [arr objectAtIndex:indexPath.row];
        cell.textLabel.text = contact.name;
        cell.imageView.image = [UIImage imageNamed:contact.photo];
        
            /** 返回cell. */
            return cell;
  
    }else {
    
        NSLog(@"hahhha");
        /** 创建一个自定义的cell. */
        CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pool2"];
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"pool2"];
            [cell autorelease];
        
            /** 给cell赋值. 有三种方法,
             第一种, 通过属性,重写model中的setter方法,
             第二种, 通过声明方法,在方法里赋值(带个model参数)
             第三种, 给各个属性一一在ViewController中赋值. */
      
        NSString *key = [self.arrOfRow objectAtIndex:indexPath.section];
        NSArray *arr = [self.dicContact objectForKey:key];
        ModelOfContact *contact = [arr objectAtIndex:indexPath.row];
        
        
        cell.con = contact;
//        [cell passModel:contact];
//        cell.textLabel.text = contact.name;
//        cell.imageView.image = [UIImage imageNamed:contact.photo];
          /** 返回 cell. */
        return cell;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
