//
//  TableViewDataSourceDelegate.h
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewDataSourceDelegate : NSObject<UITableViewDataSource, UITableViewDelegate>

-(instancetype)initWithTableView:(UITableView *)tableView;

@end
