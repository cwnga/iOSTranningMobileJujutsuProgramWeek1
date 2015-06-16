//
//  ReleaseDatesJSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"

@protocol ReleaseDatesJSONModel
@end

@interface ReleaseDatesJSONModel : JSONModel
@property (strong, nonatomic) NSString *theater;

@end
