//
//  MovieDataStore.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieListDataStore.h"
#import "MovieListJSONModel.h"

@implementation MovieListDataStore
- (instancetype) init
{
    self = [super init];
    self.movieApiClient = [[MovieApiClient alloc]init];
    self.startPage = 20;
    self.data = [[NSArray alloc]initWithArray:@[]];
    return self;
}
- (void)loadNext:(void (^)(id responseObject))success
             failure:(void (^)(NSError *error))failure
{
     NSLog(@"parameter parameter ::%@", @"hihi2");
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:
  @{
                                @"limit": @(self.startPage)
                                }];
    NSLog(@"parameter parameter ::%@", parameter);
    [self.movieApiClient getMovieList:parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
     MovieListJSONModel *movelists = (MovieListJSONModel*) responseObject;
        self.data = movelists.movies;
        NSLog(@"data::%@", self.data);
        self.startPage = self.startPage + 20;
        success(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
}
@end
