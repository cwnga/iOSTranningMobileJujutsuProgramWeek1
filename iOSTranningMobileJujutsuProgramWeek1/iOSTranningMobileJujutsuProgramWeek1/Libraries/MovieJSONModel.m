//
//  MovieJSONModel.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieJSONModel.h"

@implementation MovieJSONModel

+(JSONKeyMapper*)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"id": @"mid",
                                                       @"abridged_cast": @"abridgedCast",
                                                       @"alternate_ids": @"alternateIds",
                                                       @"critics_consensus": @"criticsConsensus",
                                                       @"mpaa_rating": @"mpaaRating"
                                                       
                                                       }];
}


@end
