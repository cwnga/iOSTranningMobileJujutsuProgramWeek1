//
//  RatingsJSONModel.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "RatingsJSONModel.h"

@implementation RatingsJSONModel

+(JSONKeyMapper*)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"critics_rating": @"criticsRating",
                                                       @"critics_score": @"criticsScore",
                                                       @"audience_rating": @"audienceRating",
                                                       @"audience_score": @"audienceScore"
                                                       }];
}

@end
