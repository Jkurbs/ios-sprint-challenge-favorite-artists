//
//  ArtistDetailViewController.m
//  Art
//
//  Created by Nick Nguyen on 4/17/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import "FAArtistDetailViewController.h"
#import "NPTLog.h"
#import "FAArtist.h"
#import "FAArtistController.h"

@interface FAArtistDetailViewController ()


@property (strong, nonatomic) IBOutlet UILabel *artistNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *yearFormedLabel;
@property (strong, nonatomic) IBOutlet UITextView *biographyTextView;
@property (nonatomic, copy) NSMutableArray *artists;


@end

@implementation FAArtistDetailViewController




- (IBAction)savePressed:(UIBarButtonItem *)sender {
  
        [self.artistController saveArtist:self.artist];
        [self.navigationController popViewControllerAnimated:YES];
    
  
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self updateViews];
    
    [self.searchBar becomeFirstResponder];
    [self.searchBar setShowsScopeBar:YES];
    _searchBar.delegate = self;

}


- (void)updateViews {
    self.navigationItem.title = self.artist.name;
    self.artistNameLabel.text = self.artist.name;
    self.biographyTextView.text = self.artist.biography;
    self.yearFormedLabel.text = [NSString stringWithFormat:@"%d",_artist.yearFormed];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [self.artistController searchForArtistWithName:searchBar.text completion:^(FAArtist *artist, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"Artist: %@, Error: %@", artist.name, error);
            self.artist = artist;
            [self updateViews];
            NSLog(@"called!");
        });
    }];
}

@end
