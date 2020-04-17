//
//  ArtistAPI.h
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FAArtist;


NS_ASSUME_NONNULL_BEGIN

@interface ArtistAPI : NSObject

typedef void (^LSIQuakeFetcherCompletionBlock)(NSArray<FAArtist *> * _Nullable artist, NSError * _Nullable error);

- (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval
                  completionBlock:(LSIQuakeFetcherCompletionBlock)completionBlock;
@end

NS_ASSUME_NONNULL_END
