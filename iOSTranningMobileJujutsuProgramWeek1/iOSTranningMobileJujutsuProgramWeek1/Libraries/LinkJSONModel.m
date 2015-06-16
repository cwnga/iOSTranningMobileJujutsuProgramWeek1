//
//  LinkJSONModel.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "LinkJSONModel.h"



@implementation LinkJSONModel
+(JSONKeyMapper*)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"self": @"selfLink",
                                                       @"alternate": @"alternateLink"
                                                       }];
}
@end
