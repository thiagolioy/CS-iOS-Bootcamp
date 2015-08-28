//
//  ListTableViewController.m
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "ListTableViewController.h"
#import "Client.h"
#import "TableViewDatasourceAndDelegate.h"
#import "MenuViewController.h"

static NSString *const kNibIdentifier = @"PopularShotsTableViewCell";
static NSString *const kCellIdentifier = @"cardShotCell";

@interface ListTableViewController () <MenuViewControllerDelegate>

@property (strong, nonatomic) TableViewDatasourceAndDelegate *datasource;
@property (strong, nonatomic) MenuViewController *menuDelegate;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListTableViewController


#pragma mark - Life Cycle

- (void)setupTableView {
    UINib *nib = [UINib nibWithNibName:kNibIdentifier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:kCellIdentifier];
    
    self.datasource = [[TableViewDatasourceAndDelegate alloc] initWithTableView:self.tableView];
    
    self.tableView.dataSource = self.datasource;
    self.tableView.delegate = self.datasource;
    
    self.menuDelegate = [MenuViewController new];
    self.menuDelegate.delegate = self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
    
}

#pragma mark - MenuViewControllerDelegate

- (void)didClickInTextWithIndex:(NSInteger)index {
    NSLog(@"NOIS");
}
@end
