//
//  FAArtist.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "FAArtist.h"

@implementation FAArtist


- (instancetype)initWithName:(NSString *)strArtist strBiographyEN:(NSString *)strBiographyEN intFormedYear:(NSNumber *)intFormedYear {
    
    self = [super init];
    if (self) {
        _strArtist = self.strArtist;
        _strBiographyEN = self.strBiographyEN;
        _intFormedYear = self.intFormedYear;
    }
    return self;
}


- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    NSDictionary *properties = dictionary[@"artists"];
    
    NSLog(@"PROPERTIES %@", properties);
    
    // All Objective-C collections must store objects (int, long, float are wrapped in NSNumber)
    NSString *name = properties[@"strArtist"];
    NSString *biography = properties[@"strBiographyEN"];
    NSNumber *formedYear = properties[@"intFormedYear"];
    
    // return the object using the default init
    self = [self initWithName:name strBiographyEN:biography intFormedYear: formedYear];
    return self;
}

@end
