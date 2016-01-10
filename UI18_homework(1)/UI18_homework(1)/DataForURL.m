//
//  DataForURL.m
//  UI18_homework(1)
//
//  Created by dllo on 16/1/6.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "DataForURL.h"

@interface DataForURL ()

@property (nonatomic, retain) id result;

@end

@implementation DataForURL

- (id)handleData:(NSString *)string {
    
    // URL.
    NSURL *url = [NSURL URLWithString:string];
    
    // 创建session对象(通道).
    NSURLSession *session = [NSURLSession sharedSession];
    
    
    // 创建任务(task).另外开辟了一个子线程,加载数据,加载完成以后回到主线程,执行block代码. (session 的 block块.)
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError *_Nullable error) {
        
        // block中的参数,就是从服务器获取的数据.
        NSLog(@"%@",response);
        
        // data进行解析. (JSON格式. response可知).
        NSLog(@"data:%@",data);
        NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str);
        NSError *errorOfJSON = nil;
    self.result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&errorOfJSON];
        NSLog(@"%@",self.result);
        
    }];
    // 开始任务.
    [task resume];
     return self.result;
   

}

@end
