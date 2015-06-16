//
//  MovieDataStore.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieApiClient.h"
@interface MovieListDataStore : NSObject
@property (strong, nonatomic) MovieApiClient *movieApiClient;

@property (assign, nonatomic) NSInteger startPage;
@property (strong, nonatomic) NSArray *data;

- (void)loadNext:(void (^)(id responseObject))success
         failure:(void (^)(NSError *error))failure;


@end
