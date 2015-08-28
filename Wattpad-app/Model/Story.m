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

+ (NSValueTransformer *)storyCreateDateJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter dateFromString:dateString];
    } reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    return dateFormatter;
}



@end
