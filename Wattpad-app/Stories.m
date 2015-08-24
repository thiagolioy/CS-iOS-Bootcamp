//
//  Stories.m
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "Stories.h"

@implementation Stories

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"storiesTotal": @"total",
             @"stories": @"stories"
             };
}

+ (NSValueTransformer *)storiesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[Story class]];
}

@end
