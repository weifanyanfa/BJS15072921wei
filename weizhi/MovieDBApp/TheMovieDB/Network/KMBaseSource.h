//
//  KMBaseSource.h
//  TheMovieDB
//
//  Created by Kevin Mindeguia on 03/02/2014.
//  Copyright (c) 2014 iKode Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMBaseSource : NSObject

@property (nonatomic, strong) NSOperationQueue* operationQueue;

- (NSDictionary*)dictionaryFromResponseData:(NSData*)responseData jsonPatternFile:(NSString*)jsonFile;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com