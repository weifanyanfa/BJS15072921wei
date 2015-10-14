//
//  ViewController.m
//  textFmdb
//
//  Created by lanou3g on 15/10/13.
//  Copyright (c) 2015年 uis. All rights reserved.
//

#import "ViewController.h"
#import <sqlite3.h>
#import "FMDatabase.h"
@interface ViewController ()
@property(nonatomic,strong)FMDatabase *db;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1\获得数据库文件路径
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES) lastObject];
    NSString *fileName = [doc stringByAppendingPathComponent:@"student.sqlite"];
    //2\获得数据库
    FMDatabase *db = [FMDatabase databaseWithPath:fileName];
    //3\打开数据库
    if ([db open]) {
        //4\创建表
        BOOL result = [db executeUpdate:@"create table if exists t_student (id integer PRIMARY KEY AUTOINCREMENT,name text NOT NULL,age integer NOT NULL);"];
        if (result) {
            NSLog(@"创建表成功");
        }
        else
        {
            NSLog(@"创建表失败");
        }
        self.db = db;
    }
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}
//插入数据
-(void)insert
{
    for (int i = 0; i < 10; i++) {
        NSString *name = [NSString stringWithFormat:@"jack%d",arc4random_uniform(100)];
        //不确定的参数用？来占位
        [self.db executeUpdate:@"insert into t_student (name,age) VALUE (?,?);",name,@(arc4random_uniform(40))];
    }
}
//删除数据
-(void)delete
{
    [self.db executeUpdate:@"drop table if exists t_student;"];
    [self.db executeUpdate:@"create table if not exists t_student (id integer PRIMARY KEY AUTOINCREMENT,name text NOT NULL,age integer NOT NULL);"];
}
//查询
-(void)query
{
    //1\执行查询语句
    FMResultSet * resultSet = [self.db executeQuery:@"SELECT * FROM t_student"];
    //2\遍历结果
    while ([resultSet next]) {
        int ID = [resultSet intForColumn:@"id"];
        NSString *name = [resultSet stringForColumn:@"name"];
        int age = [resultSet intForColumn:@"age"];
        NSLog(@"id = %d name = %@ age = %d",ID,name,age);
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
