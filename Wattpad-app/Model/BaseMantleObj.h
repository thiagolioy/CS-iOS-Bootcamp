//
//  BaseMantleObj.h
//  Wattpad-app
//
//  Created by Mateus Campos on 27/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface BaseMantleObj : MTLModel <MTLJSONSerializing>
+(instancetype)parse:(NSDictionary*)dict error:(NSError*)error;
@end
