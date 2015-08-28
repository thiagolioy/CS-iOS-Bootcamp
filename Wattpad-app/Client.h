//
//  Client.h
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <AFNetworking/AFHTTPRequestOperationManager.h>
#import "Stories.h"

@interface Client : AFHTTPRequestOperationManager

+ (instancetype)sharedInstance;

-(void)getWattPadCategoriesWithSuccess:(void (^)(NSArray *categories))success
                            andFailure:(void (^)(NSError *error))failure;

-(void)getWattPadStoriesForCategory:(NSString *)category andPage:(NSString *)page withSuccess:(void (^)(Stories *stories))success andFailure:(void (^)(NSError *error))failure;

@end
