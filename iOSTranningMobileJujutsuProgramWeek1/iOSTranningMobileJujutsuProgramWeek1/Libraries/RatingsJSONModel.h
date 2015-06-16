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
@property (strong, nonatomic) NSString *criticsRating;
@property (strong, nonatomic) NSString *criticsScore;
@property (strong, nonatomic) NSString *audienceRating;
@property (strong, nonatomic) NSString *audienceScore;

@end
