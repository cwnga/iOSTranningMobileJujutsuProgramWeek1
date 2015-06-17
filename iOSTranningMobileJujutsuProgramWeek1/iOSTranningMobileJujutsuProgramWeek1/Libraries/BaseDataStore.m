//
//  BaseDataStore.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/17/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "BaseDataStore.h"

@implementation BaseDataStore

- (instancetype) init
{
   self = [super init];
    self.movieApiClient = [[MovieApiClient alloc]init];
    self.startPage = 1;
    self.perPageCount = 20;
    self.data = [[NSMutableArray alloc]initWithArray:@[]];
    return self;
}
- (void)loadNext:(void (^)(id responseObject))success
         failure:(void (^)(NSError *error))failure;

{
}
- (void)refreshload:(void (^)(id responseObject))success
         failure:(void (^)(NSError *error))failure
{
    self.startPage = 0;
    [self loadNext:success failure:failure];
}
@end
