//
//  MovieListDataModel.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "JSONModel.h"
#import "MovieJSONModel.h"

@protocol MovieListJSONModel
@end

@interface MovieListJSONModel : JSONModel
@property (strong, nonatomic) NSString <Optional> *total;
@property (strong, nonatomic) NSArray <MovieJSONModel, Optional> *movies;
@end
