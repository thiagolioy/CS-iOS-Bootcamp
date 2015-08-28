//
//  GridCollectionViewController.m
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "GridCollectionViewController.h"
#import "TableViewDatasourceAndDelegate.h"
#import "MenuViewController.h"

static NSString *const kNibIdentifier = @"GridTableViewCell";
static NSString *const kCellIdentifier = @"gridCell";

@interface GridCollectionViewController ()

@property (nonatomic, strong) TableViewDatasourceAndDelegate *datasource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation GridCollectionViewController


#pragma mark - Life Cycle

- (void)setupTableViewWithIndex:(NSString *)index {
    UINib *nib = [UINib nibWithNibName:kNibIdentifier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:kCellIdentifier];
    
    self.datasource = [[TableViewDatasourceAndDelegate alloc] initGridWithTableView:self.tableView storyIndex:index];
    
    self.tableView.dataSource = self.datasource;
    self.tableView.delegate = self.datasource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // receive notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveMenuIndex:) name:kIndexMenuNotification object:nil];
    
    [self setupTableViewWithIndex:@"1"];
    
}

- (void)receiveMenuIndex:(NSNotification *)notification {
    NSNumber *categoryId = [notification.userInfo objectForKey:kIndexMenu];
    
    [self setupTableViewWithIndex:categoryId.stringValue];
}

@end
