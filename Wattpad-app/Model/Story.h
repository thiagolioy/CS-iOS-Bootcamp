//
//  Stories.h
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMantleObj.h"

@interface Story : BaseMantleObj

@property (nonatomic, assign) NSInteger storyId;
@property (nonatomic, strong) NSString *storyTitle;
@property (nonatomic, strong) NSURL *storyCoverURL;
@property (nonatomic, strong) NSString *storyDescription;
@property (nonatomic, strong) NSString *storyUser;
@property (nonatomic, assign) NSInteger storyNumPart;
@property (nonatomic, strong) NSString *storyTags;
@property (nonatomic, assign) NSInteger storyVoteCount;
@property (nonatomic, assign) NSInteger storyReadCount;
@property (nonatomic, assign) NSInteger storyCommentCount;
@property (nonatomic, strong) NSDate *storyCreateDate;
@property (nonatomic, strong) NSArray *storyCategories;


@end
