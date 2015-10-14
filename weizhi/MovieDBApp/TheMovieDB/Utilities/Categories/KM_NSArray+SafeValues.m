//
//  KM_NSArray+SafeValues.m
//  TheMovieDB
//
//  Created by Kevin Mindeguia on 03/02/2014.
//  Copyright (c) 2014 iKode Ltd. All rights reserved.
//

#import "KM_NSArray+SafeValues.h"

@implementation NSArray (KM_NSArray_SafeValues)

- (NSString*)km_safeStringAtIndex:(NSUInteger)index {
    NSString* string = nil;
    
    if (index < self.count){
        id obj = [self objectAtIndex:index];
        if ([obj isKindOfClass:[NSString class]]){
            string = obj;
        }
    }
    
    if (!string) {
        string = @"";
    }
    return string;
}

- (NSNumber*)km_safeNumberAtIndex:(NSUInteger)index {
    NSNumber* number = nil;
    
    if (index < self.count){
        id obj = [self objectAtIndex:index];
        if ([obj isKindOfClass:[NSNumber class]]){
            number = obj;
        }
    }
    
    if (!number) {
        number = [NSNumber numberWithInt:0];
    }
    return number;
}


- (NSDictionary*)km_safeDictionaryAtIndex:(NSUInteger)index {
    NSDictionary* dictionary = nil;
    
    if (index < self.count){
        id obj = [self objectAtIndex:index];
        if ([obj isKindOfClass:[NSDictionary class]]){
            dictionary = obj;
        }
    }
    
    if (!dictionary) {
        dictionary = [NSDictionary dictionary];
    }
    return dictionary;
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com