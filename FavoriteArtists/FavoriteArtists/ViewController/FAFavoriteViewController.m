//
//  ViewController.m
//  FavoriteArtists
//
//  Created by Kerby Jean on 4/17/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

#import "FAFavoriteViewController.h"
#import "FAAddFavoriteViewController.h"
#import "FADetailsViewController.h"


@interface FAFavoriteViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation FAFavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Favorite Artist";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.prefersLargeTitles = YES;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:(UIBarButtonSystemItemAdd) target:self action: @selector(addArtist:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    self.content = @[@"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday", @"Saturday", @"Sunday"];
    
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.table.backgroundColor = [UIColor whiteColor];

    self.table.delegate = self;
    self.table.dataSource = self;
    
    [self.view addSubview:self.table];
    
}

- (IBAction)addArtist:(id)sender {
    NSLog(@"Button tapped");
    FAAddFavoriteViewController *addFavoriteViewController = [[FAAddFavoriteViewController alloc] init];
    [self.navigationController pushViewController: addFavoriteViewController animated:true];
}
                      

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [_content objectAtIndex:indexPath.row];
    return cell ;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _content.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath: indexPath animated:true];
    NSLog(@"Did select cell title: %@", [_content objectAtIndex:indexPath.row]);
    FADetailsViewController *detailsViewController = [[FADetailsViewController alloc] init];
    [self.navigationController pushViewController: detailsViewController animated:true];
}

@end
