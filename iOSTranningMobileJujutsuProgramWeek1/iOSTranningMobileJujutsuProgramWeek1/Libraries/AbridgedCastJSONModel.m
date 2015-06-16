//
//  AbridgedCastJSONModel.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "AbridgedCastJSONModel.h"

@implementation AbridgedCastJSONModel
+(JSONKeyMapper*)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"id": @"abridgedCastId"
                                                       }];
}

@end
