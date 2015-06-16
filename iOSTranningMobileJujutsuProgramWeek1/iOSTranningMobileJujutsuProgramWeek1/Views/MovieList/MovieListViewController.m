//
//  MovieListViewController.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieListViewController.h"
#import "MovieApiClient.h"

@interface MovieListViewController ()

@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MovieApiClient *movieApiClient = [[MovieApiClient alloc]init];
    [movieApiClient getMovieList:^(AFHTTPRequestOperation *operation, id responseObject) {
       //
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
       //
        
    }];
    // Do any additional setup after loading the view from its nib.
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
