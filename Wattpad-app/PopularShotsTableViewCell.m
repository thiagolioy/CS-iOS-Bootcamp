//
//  PopularShotsTableViewCell.m
//  desafio-ios
//
//  Created by Jean Vinge on 29/07/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "PopularShotsTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation PopularShotsTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateInterfaceWithStory:(Story *)story {
    __weak typeof(self) weakSelf = self;
    
    [weakSelf.activityIndicator setHidden:NO];
    [weakSelf.activityIndicator startAnimating];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf.photoImageView sd_setImageWithURL:story.storyCoverURL completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            [weakSelf.activityIndicator stopAnimating];
            [weakSelf.activityIndicator setHidden:YES];
        }];
    });
    
    weakSelf.photoTitle.text = [story.storyTitle capitalizedString];
    weakSelf.viewsCount.text = [NSString stringWithFormat:@"%ld", story.storyVoteCount];
}

@end
