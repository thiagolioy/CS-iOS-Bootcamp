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

@interface ListTableViewController ()

@property (strong, nonatomic) TableViewDatasourceAndDelegate *datasource;

@end

@implementation ListTableViewController


#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datasource = [[TableViewDatasourceAndDelegate alloc] initWithTableView:self.tableView];
    
    self.tableView.dataSource = self.datasource;
    self.tableView.delegate = self.datasource;
    
    [self.tableView reloadData];
//
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    [self getCategories];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Actions

-(void)getCategories {
    
    [[Client sharedInstance] getWattPadCategoriesWithSuccess:^(NSArray *categories) {
        NSLog(@"%@", categories.description);
    } andFailure:^(NSError *error) {
        NSLog(@"%@", error.description);
    }];
    
}

@end
