//
//  CategoriesResponseSpec.m
//  Wattpad-app
//
//  Created by Thiago Lioy on 8/25/15.
//  Copyright © 2015 Jean Vinge. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import <OCMock.h>

#import <TLJsonFactory.h>

#import "StoryCategories.h"


SpecBegin(CategoriesResponseSpec)


describe(@"CategoriesResponse", ^{

    __block StoryCategories *categories;
    
    beforeAll(^{
        NSError *error;
        NSDictionary *dc = [TLJsonFactory tl_jsonDictFromFile:@"categories"];
        categories = [MTLJSONAdapter modelOfClass:[StoryCategories class] fromJSONDictionary:dc error:&error];
    });
    
    it(@"should not be nil", ^{
        expect(categories).toNot.beNil();
    });
    
    it(@"should have an array of kind", ^{
        
//        expect(stories.stories.firstObject).to.beKindOf();
    });
    
});

SpecEnd
