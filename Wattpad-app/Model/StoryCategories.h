//
//  StoryCategories.h
//  Wattpad-app
//
//  Created by Mateus Campos on 25/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface StoryCategories : MTLModel <MTLJSONSerializing>
@property (nonatomic, strong) NSArray *categories;
@end
