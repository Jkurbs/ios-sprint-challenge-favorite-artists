//
//  NPTArtist+NSJSONSerialization.h
//  Art
//
//  Created by Nick Nguyen on 4/17/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

@class FAArtist;

@interface FAArtist (NSJSONSerialization)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end
