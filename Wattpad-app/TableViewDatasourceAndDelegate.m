//
//  TableViewDatasourceAndDelegate.m
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "TableViewDatasourceAndDelegate.h"
#import "PopularShotsTableViewCell.h"

static NSString *const kCellIdentifier = @"cardShotCell";

@interface TableViewDatasourceAndDelegate ()
@property(nonatomic,weak) UITableView *tableView;
@end

@implementation TableViewDatasourceAndDelegate

- (instancetype)initWithTableView:(UITableView *)tableView storyIndex:(NSInteger)index {
    
    self = [super init];
    if (self) {
        self.tableView = tableView;
    }
    return self;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PopularShotsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    
    //Shot *shot = [self.dribbbleTO.shotsArray objectAtIndex:indexPath.row];
    //[cell updateInterfaceWithShot:shot];
    
    return cell;
}


@end
