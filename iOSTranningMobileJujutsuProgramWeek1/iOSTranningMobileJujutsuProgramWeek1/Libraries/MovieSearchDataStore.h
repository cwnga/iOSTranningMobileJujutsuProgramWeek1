//
//  MovieSearchDataStore.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/17/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "MovieApiClient.h"
#import "BaseDataStore.h"
@interface MovieSearchDataStore : BaseDataStore
@property (strong, nonatomic) NSString *keyword;

@end
