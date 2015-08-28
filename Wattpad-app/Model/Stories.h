//
//  Stories.h
//  Wattpad-app
//
//  Created by Mateus Campos on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMantleObj.h"


@interface Stories : BaseMantleObj

@property (nonatomic, assign) NSInteger storiesTotal;
@property (nonatomic, strong) NSArray *stories;

@end
