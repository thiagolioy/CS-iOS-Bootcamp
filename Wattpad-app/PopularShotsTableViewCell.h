//
//  PopularShotsTableViewCell.h
//  desafio-ios
//
//  Created by Jean Vinge on 29/07/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopularShotsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *photoTitle;
@property (weak, nonatomic) IBOutlet UILabel *viewsCount;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

//- (void)updateInterfaceWithShot:(Shot *)shot;

@end
