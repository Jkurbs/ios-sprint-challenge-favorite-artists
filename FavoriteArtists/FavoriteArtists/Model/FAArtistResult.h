//
//  FAArtistResult.h
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FAArtist;

NS_ASSUME_NONNULL_BEGIN


@interface FAArtistResult : NSObject

@property (nonatomic, readonly, copy) NSArray<FAArtist *> *artists;

- (instancetype)initWithName:(NSArray<FAArtist *> *)artists;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;


@end

NS_ASSUME_NONNULL_END
