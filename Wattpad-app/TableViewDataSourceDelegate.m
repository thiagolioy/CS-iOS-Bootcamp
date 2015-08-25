//
//  TableViewDataSourceDelegate.m
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "TableViewDataSourceDelegate.h"

@interface NSObject () 

@property (weak, nonatomic) UITableView *tableview;
@property (strong, nonatomic) NSArray *listObject;

@end

@implementation TableViewDataSourceDelegate

- (instancetype)initWithTableView:(UITableView *)tableView {

    self = [super init];
    if (self) {
        self.tableview = tableView;
//        self.tableview.delegate = self;
//        self.tableview.dataSource = self;
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor blackColor];
    // Configure the cell...
    
    return cell;
}


@end
