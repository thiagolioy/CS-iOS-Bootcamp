//
//  TableViewDatasourceAndDelegate.m
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "TableViewDatasourceAndDelegate.h"
#import "PopularShotsTableViewCell.h"
#import "Client.h"
#import "Stories.h"
#import "Story.h"

static NSString *const kCellListIdentifier = @"cardShotCell";
static NSString *const kCellGridIdentifier = @"gridCell";

@interface TableViewDatasourceAndDelegate ()
@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) NSString *cellIdentifier;

@property (nonatomic, strong) Stories *stories;

@end

@implementation TableViewDatasourceAndDelegate

- (instancetype)initListWithTableView:(UITableView *)tableView storyIndex:(NSString *)index {
    
    self = [super init];
    if (self) {
        self.tableView = tableView;
        self.cellIdentifier = kCellListIdentifier;
        
        [self retrieveStoriesWithIndex:index];
    }
    return self;
}

- (instancetype)initGridWithTableView:(UITableView *)tableView storyIndex:(NSString *)index {
    
    self = [super init];
    if (self) {
        self.tableView = tableView;
        self.cellIdentifier = kCellGridIdentifier;
        
        [self retrieveStoriesWithIndex:index];
    }
    return self;
}

- (void)retrieveStoriesWithIndex:(NSString *)index {
    __weak typeof(self) weakSelf = self;
    
    [[Client sharedInstance] getWattPadStoriesForCategory:index andPage:index withSuccess:^(Stories *stories) {
        weakSelf.stories = stories;
        
        [weakSelf.tableView reloadData];
    } andFailure:^(NSError *error) {
    }];
}

#pragma mark - UITableView Datasource/Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.stories.stories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PopularShotsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    Story *story = [self.stories.stories objectAtIndex:indexPath.row];
    [cell updateInterfaceWithStory:story];
    
    return cell;
}


@end
