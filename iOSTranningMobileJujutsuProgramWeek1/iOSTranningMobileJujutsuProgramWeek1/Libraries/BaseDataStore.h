//
//  BaseDataStore.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/17/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieApiClient.h"

@interface BaseDataStore : NSObject
@property (assign, nonatomic) NSInteger startPage;
@property (assign, nonatomic) NSInteger perPageCount;
@property (strong, nonatomic) NSMutableArray *data;
@property (strong, nonatomic) MovieApiClient *movieApiClient;

- (void)loadNext:(void (^)(id responseObject))success
         failure:(void (^)(NSError *error))failure;
- (void)refreshload:(void (^)(id responseObject))success
            failure:(void (^)(NSError *error))failure;
@end
