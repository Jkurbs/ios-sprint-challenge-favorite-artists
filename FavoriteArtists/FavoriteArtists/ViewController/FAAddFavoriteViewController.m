//
//  FAAddFavoriteViewController.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "FAAddFavoriteViewController.h"

@interface FAAddFavoriteViewController ()

@end

@implementation FAAddFavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Add New Artist";
    self.view.backgroundColor = [UIColor whiteColor];

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:(UIBarButtonSystemItemSave) target:self action: @selector(saveNewArtist:)];
       self.navigationItem.rightBarButtonItem = addButton;
    
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectZero];
    _searchBar.translatesAutoresizingMaskIntoConstraints = false;
    [_searchBar sizeToFit];
    _searchBar.placeholder = @"Search for artist";
    [self.view addSubview: _searchBar];
    
    
    self.titleLabel = [[UILabel alloc] init];
    
    _titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    _titleLabel.font = [UIFont systemFontOfSize:40 weight:(UIFontWeightSemibold)];
    _titleLabel.text = @"Kerby";
    [self.view addSubview:_titleLabel];
    
    
    self.infoTextView = [[UITextView alloc] init];
    _infoTextView.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:_infoTextView];
    
    [NSLayoutConstraint activateConstraints:@[
        [_searchBar.topAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor],
        [_searchBar.widthAnchor constraintEqualToAnchor:self.view.widthAnchor],
        
        [_titleLabel.topAnchor constraintEqualToAnchor: _searchBar.bottomAnchor constant:32],
        [_titleLabel.leftAnchor constraintEqualToAnchor: self.view.leftAnchor constant:16.0],
        
        [_infoTextView.topAnchor constraintEqualToAnchor:_titleLabel.bottomAnchor constant:16.0],
        [_infoTextView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor],
        [_infoTextView.heightAnchor constraintEqualToAnchor:self.view.widthAnchor]
     ]
    ];
}

- (IBAction)saveNewArtist:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
