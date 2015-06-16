//
//  MovieApiClient.m
//  iOSTranningMobileJujutsuProgramWeek1
//
//  Created by Anson Ng on 6/16/15.
//  Copyright (c) 2015 Anson Ng. All rights reserved.
//

#import "MovieApiClient.h"
#import "MovieListJSONModel.h"
@interface MovieApiClient()
@property (strong, nonatomic) NSString *host;
@property (strong, nonatomic) NSString *apikey;

@end

@implementation MovieApiClient
- (instancetype) init
{
    self = [super init];
    self.host = @"http://api.rottentomatoes.com";
    self.apikey = @"dagqdghwaq3e3mxyrp7kmmj5";
    return self;
}
- (void)getMovieList:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                                 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    NSString *movieListPath = @"/api/public/v1.0/lists/movies/box_office.json";
    NSString *url = [self.host stringByAppendingString:movieListPath];
    NSMutableDictionary *parameters = @{
                                        @"apikey": self.apikey,
                                        @"limit": @"1"
                                        };
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        NSError* err = nil;

        
        MovieListJSONModel *movelists = [[MovieListJSONModel alloc] initWithDictionary:responseObject error:&err];
        NSLog(@"movelists %@", movelists);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];

}

@end
