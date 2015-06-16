//
//  MovieJSONModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"
#import "LinkJSONModel.h"
#import "ReleaseDatesJSONModel.h"
#import "RatingsJSONModel.h"
#import "PostersJSONModel.h"
#import "AbridgedCastJSONModel.h"
#import "AlternateIdsJSONModel.h"
@protocol MovieJSONModel
@end

@interface MovieJSONModel : JSONModel

@property (strong, nonatomic) NSString <Optional> *mid;

@property (strong, nonatomic) NSString <Optional> *title;

@property (strong, nonatomic) NSString <Optional> *year;
@property (strong, nonatomic) NSString <Optional> * runtime;
@property (strong, nonatomic) ReleaseDatesJSONModel <Optional> * releaseDates;
@property (strong, nonatomic) RatingsJSONModel <Optional> *ratings;
@property (strong, nonatomic) AlternateIdsJSONModel <Optional> *alternateIds;

@property (strong, nonatomic) NSString <Optional> *synopsis;
@property (strong, nonatomic) NSString <Optional> *criticsConsensus;
@property (strong, nonatomic) NSString <Optional> *mpaaRating;


@property (strong, nonatomic) PostersJSONModel <Optional> *posters;
@property (strong, nonatomic) AbridgedCastJSONModel <Optional> *abridgedCast;
@property (strong, nonatomic) LinkJSONModel <Optional> *links;



@end
