//
//  FAArtistAPI.h
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FAArtist.h"

NS_ASSUME_NONNULL_BEGIN

@interface FAArtistAPI : NSObject

typedef void (^FAArtistFetcherCompletionBlock)(NSArray<FAArtist *> * _Nullable artists, NSError * _Nullable error);

- (void)fetchArtistWithName:(NSString *)artistName completionBlock:(FAArtistFetcherCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
