//
//  Client.m
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "Client.h"

@implementation Client

static NSString *const kAPIBase = @"https://api.wattpad.com:443/v4/";

static NSString *const kPathCategories = @"categories";
static NSString *const kPathStories = @"stories";

static NSString *const kAPIKey = @"DmtSDx33jGrNwWSMKUz8wvFQN0rA5BjSjcdTCkQftAUw";
static NSString *const kAPISecret = @"rIezAPvXCOOVBfoVtiDv85DMHXxwqHxrO1uIP7cQxzag";

+ (instancetype)sharedInstance {
    static Client *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        NSString *apiBaseUrl = kAPIBase;
        NSString *apiKey = kAPIKey;
        
        _sharedInstance = [[self alloc] initWithBaseURL:[NSURL URLWithString:apiBaseUrl]];
        _sharedInstance.requestSerializer = [AFJSONRequestSerializer serializer];
        [_sharedInstance.requestSerializer setValue:apiKey forHTTPHeaderField:@"Authorization"];
        
        _sharedInstance.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedInstance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", nil];
        
        [_sharedInstance.reachabilityManager startMonitoring];
        
    });
    
    
    return _sharedInstance;
}

@end
