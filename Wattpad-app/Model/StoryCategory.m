//
//  Categories.m
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "StoryCategory.h"

@implementation StoryCategory

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"categoryId": @"id",
             @"categoryName": @"name"
             };
}

@end
