//
//  BaseMantleObj.m
//  Wattpad-app
//
//  Created by Mateus Campos on 27/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "BaseMantleObj.h"

@implementation BaseMantleObj

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
     NSAssert(NO, @"This is an abstract method and should be overridden");
    return  nil;
}


+(instancetype)parse:(NSDictionary*)dict error:(NSError*)error{
    id client = [MTLJSONAdapter modelOfClass:self.class fromJSONDictionary:dict error:&error];
    return client;
}


@end
