//
//  MovieDetailViewController.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieJSONModel.h"
#import "BaseViewController.h"

@interface MovieDetailViewController : BaseViewController
@property (strong, nonatomic) MovieJSONModel *movieJSONModel;
@end
