//
//  Client.m
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "Client.h"
#import "StoryCategory.h"
#import "StoryCategories.h"
#import "Stories.h"

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

-(void)getWattPadCategoriesWithSuccess:(void (^)(NSArray *categories))success
                            andFailure:(void (^)(NSError *error))failure {
    
    [self GET:kPathCategories parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        NSError *error;
        StoryCategories *categories = [MTLJSONAdapter modelOfClass:[StoryCategories class] fromJSONDictionary:responseObject error:&error];
        
        if (success) {
            success(categories.categories);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"%@", error.description);
    
    }];
    
}

-(void)getWattPadStoriesForCategory:(NSString *)category
                            andPage:(NSInteger)page
                        withSuccess:(void (^)(NSArray *stories))success
                         andFailure:(void (^)(NSError *error))failure {
    
    NSMutableDictionary *parameters = [NSMutableDictionary new];
    [parameters setObject:category forKey:@"category"];
    [parameters setObject:[NSNumber numberWithInteger:page] forKey:@"offset"];
    
    
    [self GET:kPathStories parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        NSError *error;
        Stories *stories = [MTLJSONAdapter modelOfClass:[Stories class] fromJSONDictionary:responseObject error:&error];
        
        if (success) {
            success(stories.stories);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"%@", error.description);
        
    }];

}



@end
