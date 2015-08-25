//
//  TableViewDatasourceAndDelegate.h
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewDatasourceAndDelegate : NSObject<UITableViewDelegate,UITableViewDataSource>
- (instancetype)initWithTableView:(UITableView *)tableView ;
@end
