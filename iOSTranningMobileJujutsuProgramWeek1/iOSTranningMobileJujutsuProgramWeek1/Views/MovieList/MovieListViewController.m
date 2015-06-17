//
//  MovieListViewController.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieListViewController.h"
#import "MovieListViewCell.h"
#import "MovieListDataStore.h"
#import "MovieJSONModel.h"
#import "MovieDetailViewController.h"
#import <SVProgressHUD.h>

@interface MovieListViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) MovieListDataStore *movieListDataStore;
@property (strong, nonatomic) UIRefreshControl *refreshControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *viewToggle;
@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    [self setupView];
    self.movieListDataStore = [[MovieListDataStore alloc]init];

        NSLog(@"parameter parameter ::%@", @"hihi");
   // [[UITabBar appearance] setTintColor:self.viewToggle.tintColor];
    [SVProgressHUD setBackgroundColor:self.viewToggle.tintColor];
   
    [self refreshData];
  
    
    // Do any additional setup after loading the view from its nib.
}

- (void)refreshData
{
    [SVProgressHUD show];
    
    [self.movieListDataStore loadNext:^(id responseObject) {
        [self.collectionView reloadData];
        [SVProgressHUD dismiss];
        NSLog(@"parameter parameter ::%@", @"hihi3");
        if (!self.refreshControl.isRefreshing) {
            [SVProgressHUD dismiss];
        } else {
            [self.refreshControl endRefreshing];
        }
    } failure:^(NSError *error) {
        // [self.collectionView reloadData];
        NSLog(@"parameter parameter ::%@", @"hih4");
    }];

}

- (void)setupView
{
    UINib *movieListCollectionViewCellNib = [UINib nibWithNibName:@"MovieListViewCell" bundle:nil];
    [self.collectionView registerNib:movieListCollectionViewCellNib forCellWithReuseIdentifier:@"MovieListViewCell"];
    self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.refreshControl = [[UIRefreshControl alloc]init];
  //   self.refreshControl.attributedTitle = @"put to refresh";
    [self.refreshControl addTarget:self action:@selector(refreshData) forControlEvents:UIControlEventValueChanged];
    [self.collectionView addSubview:self.refreshControl];
    
}
-(void)RefreshViewControlEventValueChanged{
    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"刷新中..."];
    
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
    NSLog(@"numberOfItemsInSection::%@", self.movieListDataStore.data);
    return [self.movieListDataStore.data count];
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.1f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 1.0f;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize result =  [[NibSizeCalculator sharedInstance] sizeForNibNamed:@"MovieListViewCell" withstyle:NibFixedHeightScaling];
     return CGSizeMake(150 , 300);
    
   // CGSize result2 = [CGSize alloc]ini
   // return result;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    MovieListViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MovieListViewCell" forIndexPath:indexPath];
    
    MovieJSONModel *move = self.movieListDataStore.data[indexPath.row];
    
    cell.titleLabel.text = move.title;
    cell.rationLabel.text  = move.ratings.criticsScore;
    cell.runtimeLabel.text  = move.runtime;
    [cell.movieImageView sd_setImageWithURL:[NSURL URLWithString:move.posters.thumbnail]
                           placeholderImage:[UIImage imageNamed:@"placeholder.png"]
                                  completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
                                      if (!error) {
                                          cell.movieImageView.image = image;
                                          cell.movieImageView.contentMode = UIViewContentModeScaleAspectFill;
                                      }
                                      
                                  }];
    
   //     cell.moveImageView.contentMode = UIViewContentModeCenter;
  //  cell.moveImageView.image = [UIImage imageNamed:@"img-no_image"];
   // cell.moveImageView.contentMode = UIViewContentModeScaleAspectFill;
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    MovieJSONModel *movieJSONModel = (MovieJSONModel *)self.movieListDataStore.data[indexPath.row];
    MovieDetailViewController *vc = [[NSClassFromString(@"MovieDetailViewController") alloc] init];
    vc.movieJSONModel = movieJSONModel;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
