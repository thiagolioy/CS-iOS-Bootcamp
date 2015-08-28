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

@interface ListTableViewController () <MenuViewControllerDelegate>

@property (strong, nonatomic) TableViewDatasourceAndDelegate *datasource;
@property (strong, nonatomic) MenuViewController *menuDelegate;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListTableViewController


#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datasource = [[TableViewDatasourceAndDelegate alloc] initWithTableView:self.tableView];
    
    self.tableView.dataSource = self.datasource;
    self.tableView.delegate = self.datasource;
    self.menuDelegate.delegate = self;
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MenuViewControllerDelegate

- (void)didSelectedIndex:(NSInteger)index {
    
}
@end
