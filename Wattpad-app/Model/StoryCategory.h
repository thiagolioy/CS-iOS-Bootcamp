//
//  Categories.h
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface StoryCategory : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign) NSInteger categoryId;
@property (nonatomic, strong) NSString *categoryName;

@end
