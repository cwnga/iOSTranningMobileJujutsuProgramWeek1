//
//  MovieDetailViewController.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "MovieJSONModel.h"

@interface MovieDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *movieImageView;

@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;


@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupView];
}

- (void) setupView
{
    self.synopsisLabel.text = self.movieJSONModel.synopsis;
    self.movieImageView.contentMode = UIViewContentModeCenter;
    [self.movieImageView sd_setImageWithURL:[NSURL URLWithString:self.movieJSONModel.posters.detailed]
                           placeholderImage:[UIImage imageNamed:@"placeholder.png"]
                                  completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
                                      if (!error) {
                                          self.movieImageView.image = image;
                                          self.movieImageView.contentMode = UIViewContentModeScaleAspectFill;
                                    
                                      }
                                      
                                  }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
