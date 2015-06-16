//
//  AbridgedCastJSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"
@protocol AbridgedCastJSONModel
@end

@interface AbridgedCastJSONModel : JSONModel
@property (strong, nonatomic) NSString <Optional> *abridgedCastId;
@property (strong, nonatomic) NSString <Optional> *name;
@property (strong, nonatomic) NSArray <Optional> *characters;

@end
