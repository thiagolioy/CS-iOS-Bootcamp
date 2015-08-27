//
//  CategoryResponseSpec.m
//  Wattpad-app
//
//  Created by Mateus Campos on 26/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Specta.h>
#import <Expecta.h>
#import <OCMock.h>

#import <TLJsonFactory.h>

#import "StoryCategory.h"


SpecBegin(CategoryResponseSpec)


describe(@"CategoriesResponse", ^{
    
    __block StoryCategory *category;
    
    beforeAll(^{
        NSError *error;
        NSDictionary *dc = [TLJsonFactory tl_jsonDictFromFile:@"category"];
        category = [MTLJSONAdapter modelOfClass:[StoryCategory class] fromJSONDictionary:dc error:&error];
    });
    
    it(@"should not be nil", ^{
        expect(category).toNot.beNil();
    });
    
    it(@"should have an array of kind", ^{
        
        //        expect(stories.stories.firstObject).to.beKindOf();
    });
    
});

SpecEnd
