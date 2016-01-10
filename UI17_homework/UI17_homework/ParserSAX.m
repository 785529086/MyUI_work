//
//  ParserSAX.m
//  UI17_homework
//
//  Created by dllo on 16/1/5.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "ParserSAX.h"
#import "ModelForCartoon.h"

@interface ParserSAX ()<NSXMLParserDelegate>

@property (nonatomic, retain) NSMutableArray *arr;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSMutableString *str;

@end

@implementation ParserSAX

- (NSArray *)parserSAXWithFile:(NSString *)filePath {

    self.arr = [NSMutableArray array];
   
    
    // NSXMLParser
    NSXMLParser *xmlPar = [[NSXMLParser alloc]initWithData:[NSData dataWithContentsOfFile:filePath]];
    
    // 数据通过协议回调出来.
    xmlPar.delegate = self;
    
    // 开始解析.
    [xmlPar parse];
    
    return self.arr;
}

// 读到标签之间的值时, 调用此法方法.
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {

    // 读到<AlbumInfo>
    if ([elementName isEqualToString:@"AlbumInfo"]) {
        ModelForCartoon *model = [[ModelForCartoon alloc]init];
        [self.arr addObject:model];
    }
    NSLog(@"start:%@",elementName);

     self.str = [NSMutableString stringWithString:@""];
}

// 读到标签之间的值时, 调用此方法.
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {


        [self.str stringByAppendingString:string];
        self.content = self.str;
    
         NSLog(@"found:%@",string);

}

// 读到标签结束的时候,调用此方法.
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {


    // 指向数组中最后一个model对象.
    ModelForCartoon *model = [self.arr lastObject];
    if ([elementName isEqualToString:@"name"]) {
        model.name = self.content;
    }else if ([elementName isEqualToString:@"desc"]) {
        model.desc = self.content;
        NSLog(@"end:%@",self.content);    
    }
}


@end
