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

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *biography;
@property (nonatomic, readonly) int *year;

- (instancetype) initWithName: (NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
