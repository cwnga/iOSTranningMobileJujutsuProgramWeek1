//
//  postersJSONModel.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "PostersJSONModel.h"

@implementation PostersJSONModel
- (NSString *) detailed
{
    NSRange range = [self.thumbnail rangeOfString:@".*cloudfront.net/" options:NSRegularExpressionSearch];
    NSString *returnValue = self.thumbnail;
    if (range.length >0) {
        returnValue = [self.thumbnail stringByReplacingCharactersInRange:range withString:@"http://content6.flixster.com/"];
    }
    return returnValue;
}
@end
