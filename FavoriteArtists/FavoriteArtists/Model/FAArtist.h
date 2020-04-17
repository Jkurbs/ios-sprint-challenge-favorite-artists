//
//  FAArtist.h
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FAArtist : NSObject

@property (nonatomic, readonly, copy) NSString *strArtist;
@property (nonatomic, readonly, copy) NSString *strBiographyEN;
@property (nonatomic, readonly) NSNumber *intFormedYear;

- (instancetype)initWithName:(NSString *)strArtist
    strBiographyEN:(NSString *)strBiographyEN
    intFormedYear: (NSNumber *)intFormedYear;

- (instancetype) initWithDictionary: (NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
