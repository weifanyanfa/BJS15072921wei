//
//  NSBundle+Loader.m
//  TheMovieDB
//
//  Created by Kevin Mindeguia on 24/06/2013.
//  Copyright (c) 2014 iKode Ltd. All rights reserved.
//

#import "NSBundle+Loader.h"

@implementation NSBundle (Loader)

- (id)dataFromResource:(NSString *)resource {
    NSString *path = [self pathForResource:resource ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:path];
    if (!data) {
        @throw @"Could not load data.";
    }
    return data;
}

- (id)jsonFromResource:(NSString *)resource {
    NSData *jsonData = [self dataFromResource:resource];
    id json = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    if (!json) {
        @throw @"Could not load JSON.";
    }
    return json;
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com