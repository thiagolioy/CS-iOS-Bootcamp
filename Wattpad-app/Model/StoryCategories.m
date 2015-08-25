//
//  StoryCategories.m
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "StoryCategories.h"
#import "StoryCategory.h"

@implementation StoryCategories

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"categories": @"categories",
             };
}

+ (NSValueTransformer *)categoriesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[StoryCategory class]];
}

@end
