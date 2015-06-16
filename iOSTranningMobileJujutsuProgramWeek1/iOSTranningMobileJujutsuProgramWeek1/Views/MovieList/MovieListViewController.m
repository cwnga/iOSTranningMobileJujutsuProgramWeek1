//
//  MovieListViewController.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieListViewController.h"
#import "MovieListViewCell.h"
#import "MovieApiClient.h"

@interface MovieListViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

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
    [self setupView];
    // Do any additional setup after loading the view from its nib.
}



- (void)setupView
{
    UINib *movieListCollectionViewCellNib = [UINib nibWithNibName:@"MovieListViewCell" bundle:nil];
    [self.collectionView registerNib:movieListCollectionViewCellNib forCellWithReuseIdentifier:@"MovieListViewCell"];
    self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.0f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.0f;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [[NibSizeCalculator sharedInstance] sizeForNibNamed:@"MovieListViewCell" withstyle:NibFixedHeightScaling];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    MovieListViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MovieListViewCell" forIndexPath:indexPath];
    cell.titleLabel.text = @"test1";
    cell.rationLabel.text  = @"10";
        cell.moveImageView.contentMode = UIViewContentModeCenter;
    cell.moveImageView.image = [UIImage imageNamed:@"img-no_image"];
    cell.moveImageView.contentMode = UIViewContentModeScaleAspectFill;
    return cell;
}

@end
