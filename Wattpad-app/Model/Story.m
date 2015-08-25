//
//  Stories.m
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "Story.h"

@implementation Story

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"storyId": @"id",
             @"storyTitle": @"title",
             @"storyCoverURL": @"cover",
             @"storyDescription": @"description",
             @"storyUser": @"user",
             @"storyNumPart": @"numParts",
             @"storyTags": @"tags",
             @"storyVoteCount": @"voteCount",
             @"storyReadCount": @"readCount",
             @"storyCommentCount": @"commentCount",
             @"storyCreateDate": @"createDate",
             @"storyCategories": @"categories"
             };
}

+ (NSValueTransformer *)storyCoverURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)storyCategoriesJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[StoryCategory class]];
}

@end
