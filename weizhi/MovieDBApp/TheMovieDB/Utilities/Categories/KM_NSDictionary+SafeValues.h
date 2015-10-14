//
//  KM_NSDictionary+SafeValues.h
//  TheMovieDB
//
//  Created by Kevin Mindeguia on 26/06/2013.
//  Copyright (c) 2013 iKode Ltd. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSDictionary (KM_NSDictionary_SafeValues)

- (NSString*)km_safeStringForKey:(id)key;
- (NSNumber*)km_safeNumberForKey:(id)key;
- (NSArray*)km_safeArrayForKey:(id)key;
- (NSDictionary*)km_safeDictionaryForKey:(id)key;
- (UIImage*)km_safeImageForKey:(id)key;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com