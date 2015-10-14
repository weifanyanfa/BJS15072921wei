//
//  KM_NSURL+Parameters.h
//  TheMovieDB
//
//  Created by Kevin Mindeguia on 26/06/2013.
//  Copyright (c) 2014 iKode Ltd. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSURL (KM_NSURL_Parameters)

+ (NSURL*)URLWithString:(NSString*)urlString additionalParameters:(NSString*)additionalParameters;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com