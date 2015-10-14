//
//  KMMovie.h
//  TheMovieDB
//
//  Created by Kevin Mindeguia on 03/02/2014.
//  Copyright (c) 2014 iKode Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMMovie : NSObject

@property (nonatomic, copy) NSString* movieTitle;
@property (nonatomic, copy) NSString* movieId;
@property (nonatomic, copy) NSString* movieSynopsis;
@property (nonatomic, copy) NSString* movieYear;
@property (nonatomic, copy) NSString* movieOriginalBackdropImageUrl;
@property (nonatomic, copy) NSString* movieOriginalPosterImageUrl;
@property (nonatomic, copy) NSString* movieThumbnailPosterImageUrl;
@property (nonatomic, copy) NSString* movieThumbnailBackdropImageUrl;
@property (nonatomic, copy) NSString* movieGenresString;
@property (nonatomic, copy) NSString* movieVoteCount;
@property (nonatomic, copy) NSString* movieVoteAverage;
@property (nonatomic, copy) NSString* moviePopularity;

- (id)initWithDictionary:(NSDictionary*)dictionary;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com