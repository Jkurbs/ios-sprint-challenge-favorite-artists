//
//  FAAddFavoriteViewController.h
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FAAddFavoriteViewController : UIViewController

@property (strong, nonatomic) UISearchBar *searchBar;
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UITextView *infoTextView;
@end

NS_ASSUME_NONNULL_END
