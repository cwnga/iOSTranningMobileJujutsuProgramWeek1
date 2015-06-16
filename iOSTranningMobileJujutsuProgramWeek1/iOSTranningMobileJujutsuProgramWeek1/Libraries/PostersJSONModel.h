//
//  postersJSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"
@protocol PostersJSONModel
@end

@interface PostersJSONModel : JSONModel

@property (strong, nonatomic) NSString *thumbnail;
@property (strong, nonatomic) NSString *profile;
@property (strong, nonatomic) NSString *detailed;
@property (strong, nonatomic) NSString *original;

@end
