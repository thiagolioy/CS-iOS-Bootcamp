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

#import "Stories.h"


SpecBegin(CategoriesResponseSpec)


describe(@"CategoriesResponse", ^{

    __block Stories *stories;
    
    beforeAll(^{
//        NSDictionary *dc = [TLJsonFactory tl_jsonDictFromFile:@"categories"];
//        stories = [Stories parse:dc];
    });
    
    it(@"should not be nil", ^{
//        expect(stories).toNot.beNil();
    });
    
    it(@"should have an array of kind", ^{
        
//        expect(stories.stories.firstObject).to.beKindOf();
    });
    
});

SpecEnd