//
//  Stories.h
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"
#import "Story.h"

@interface Stories : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign) NSInteger storiesTotal;
@property (nonatomic, strong) NSArray *stories;

@end
