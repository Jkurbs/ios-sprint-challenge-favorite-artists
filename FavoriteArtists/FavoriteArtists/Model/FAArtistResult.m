//
//  FAArtistResult.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "FAArtistResult.h"
#import "FAArtist.h"

@class FAArtist;


@implementation FAArtistResult

- (instancetype)initWithName:(NSArray<FAArtist *> *)artists {
    self = [super init];
    if (self) {
        _artists = artists;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    // To parse an array you need to iterate over the array of dictionaries
    
    NSArray *artistDictionaries = dictionary[@"artists"];
    NSMutableArray *artists = [[NSMutableArray alloc] init];

    for (NSDictionary *artistDictionary in artistDictionaries) {
        
        FAArtist * artist = [[FAArtist alloc] initWithDictionary: artistDictionary];
        if (artist) { // store it if it's valid, ignore it if it's not
            [artists addObject: artist];
        } else {
            NSLog(@"Unable to parse quake dictionary: %@", artistDictionary);
        }
    }
    self = [self initWithName: artists];
    return self;
}

@end
