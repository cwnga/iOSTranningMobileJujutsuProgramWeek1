//
//  alternateIdsJSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"
@protocol AlternateIdsJSONModel
@end

@interface AlternateIdsJSONModel : JSONModel

@property (strong, nonatomic) NSString <Optional> *imdb;

@end
