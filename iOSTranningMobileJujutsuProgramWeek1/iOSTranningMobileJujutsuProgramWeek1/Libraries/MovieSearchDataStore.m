//
//  MovieDataStore.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieSearchDataStore.h"
#import "MovieListJSONModel.h"

@implementation MovieSearchDataStore

- (instancetype) init
{
    self = [super init];
    self.keyword = @"";
    return self;
}



- (void)loadNext:(void (^)(id responseObject))success
         failure:(void (^)(NSError *error))failure
{
 //page_limit, page
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:
                                      @{
                                        @"q": self.keyword,
                                        @"page_limit": @(self.perPageCount),
                                        @"page": @(self.startPage)
                                       }];
    NSLog(@"search parameter parameter ::%@", parameter);
    [self.movieApiClient searchMovieList:parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
        MovieListJSONModel *movelists = (MovieListJSONModel*) responseObject;
        
        if ([movelists.total integerValue] >0) {
            [self.data addObjectsFromArray: movelists.movies];
            self.startPage = self.startPage + 1;
        }
        NSLog(@"search parameter paramete responseObject::%@",responseObject);
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error::%@", error);
    }];
    
}


@end
