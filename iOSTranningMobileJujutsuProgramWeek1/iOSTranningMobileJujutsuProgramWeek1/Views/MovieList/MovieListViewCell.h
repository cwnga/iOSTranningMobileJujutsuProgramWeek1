//
//  MovieListViewCell.h
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieListViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *moveImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *runtimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *rationLabel;

@end
