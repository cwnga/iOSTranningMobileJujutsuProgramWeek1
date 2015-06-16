//
//  Ratings JSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"
@protocol RatingsJSONModel
@end

@interface RatingsJSONModel : JSONModel
@property (strong, nonatomic) NSString <Optional> *criticsRating;
@property (strong, nonatomic) NSString <Optional> *criticsScore;
@property (strong, nonatomic) NSString <Optional> *audienceRating;
@property (strong, nonatomic) NSString <Optional> *audienceScore;

@end
