//
//  LinkJSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"

@protocol LinkJSONModel
@end

@interface LinkJSONModel : JSONModel
@property (strong, nonatomic) NSString <Optional> *selfLink;
@property (strong, nonatomic) NSString <Optional> *alternateLink;
@end
