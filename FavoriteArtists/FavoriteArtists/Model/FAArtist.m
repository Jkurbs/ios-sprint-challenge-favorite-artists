//
//  FAArtist.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "FAArtist.h"

@implementation FAArtist

- (instancetype)initWithName:(NSDictionary *)dictionary {

    self = [super init];
    if (self) {
        _name = self.name;
        _biography = self.biography;
        _year = self.year;
    }
    return self;
}

@end
