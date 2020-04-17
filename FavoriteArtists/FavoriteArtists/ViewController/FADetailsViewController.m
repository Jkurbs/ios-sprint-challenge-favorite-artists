//
//  FADetailsViewController.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "FADetailsViewController.h"

@interface FADetailsViewController ()

@end

@implementation FADetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Artist name";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.infoTextView = [[UITextView alloc] init];
       _infoTextView.translatesAutoresizingMaskIntoConstraints = false;
       [self.view addSubview:_infoTextView];
    
    [NSLayoutConstraint activateConstraints:@[
        [_infoTextView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:16.0],
        [_infoTextView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor],
        [_infoTextView.heightAnchor constraintEqualToAnchor:self.view.widthAnchor]
     ]
    ];
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
