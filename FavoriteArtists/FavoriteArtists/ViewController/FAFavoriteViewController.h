//
//  ViewController.h
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FAFavoriteViewController : UIViewController

@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray     *content;

@end

