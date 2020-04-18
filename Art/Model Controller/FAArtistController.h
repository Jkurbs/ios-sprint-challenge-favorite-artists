//
//  ViewController.h
//  Art
//
//  Created by Nick Nguyen on 4/17/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FAArtist;

@interface FAArtistController : NSObject

@property (readonly, nonatomic) NSArray *artists;
@property (readonly, nonatomic) FAArtist *currentArtist;

- (void)loadFromPersistentStore;
- (void)saveToPersistence:(FAArtist *)artist;
- (void)removeFromPersistence:(FAArtist *)artist;
- (void)searchWithName:(NSString *)name completion:(void (^)(FAArtist *artist, NSError *error))completion;

@end
