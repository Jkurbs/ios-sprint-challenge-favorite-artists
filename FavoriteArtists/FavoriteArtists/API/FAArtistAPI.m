//
//  FAArtistAPI.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "LSIErrors.h"
#import "LSILog.h"
#import "FAArtistResult.h"
#import "FAArtistAPI.h"

static NSString *baseURLString = @"https://www.theaudiodb.com/api/v1/json/1/search.php?";

@implementation FAArtistAPI

// Overriding the NSObject init (we don't need to redeclare in the .h file)
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (void)fetchArtistWithName:(NSString *)artistName completionBlock:(FAArtistFetcherCompletionBlock)completionBlock {

    NSURLComponents *urlComponents = [[NSURLComponents alloc] initWithString:baseURLString];

    urlComponents.queryItems = @[
           [NSURLQueryItem queryItemWithName:@"s" value: artistName]
       ];
       
       NSURL *url = urlComponents.URL;
    if (url != nil) {
        NSURLSessionDataTask *task = [NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            NSLog(@"url: %@", url);
            
            // Errors
            if (error) {
                completionBlock(nil, error);
                return;
            }
            
            if (!data) {
                NSError *dataError = errorWithMessage(@"No data in URL response for quakes", LSIDataNilError);
                completionBlock(nil, dataError);
                return;
            }
            
            NSError *jsonError = nil; // nil = no error
            
            // & = address of
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            NSLog(@" NAME: %@", json);

            // Future: You may need to check kindOfClass if it's not what we expect!
            
            if (jsonError) {
                completionBlock(nil, jsonError);
                return;
            }
            
            // Decode using our initalizers
            
//            FAArtist *artist = [[FAArtist alloc]]
            
            
            FAArtistResult *artists = [[FAArtistResult alloc] initWithDictionary:json];
            NSLog(@" NAME: %d", artists.artists.count);
            
           // FIXME: check for non-nil results
            
            completionBlock(artists.artists, nil);
        }];
        
        [task resume];
    }
    
    
}
@end
