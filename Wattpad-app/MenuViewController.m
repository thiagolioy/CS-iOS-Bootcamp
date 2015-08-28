//
//  MenuViewController.m
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "MenuViewController.h"
#import "SegmentedControlHelper.h"
#import "Client.h"
#import "StoryCategory.h"

@interface MenuViewController () <SegmentedControlHelperDelegate>

@property (weak, nonatomic) IBOutlet UIView *viewMenu;
@property (strong, nonatomic) SegmentedControlHelper *segmentedControlHelper;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self retrieveCategories];
}

- (void)setupSegmentedMenuWithCategories:(NSArray *)categories {
    
    // iterate categories to find category name
    __block NSMutableArray *mtArray = [NSMutableArray new];
    for (StoryCategory *category in categories) {
        [mtArray addObject:category.categoryName];
    }
    
    self.segmentedControlHelper = [[SegmentedControlHelper alloc] initWithView:self.viewMenu titleArray:mtArray];
    self.segmentedControlHelper.delegate = self;
}

#pragma mark - SegmentedControlHelperDelegate

- (void)didSelectTextWithIndex:(NSInteger)index {
    if ([self.delegate respondsToSelector:@selector(didClickInTextWithIndex:)]) {
        [self.delegate didClickInTextWithIndex:index];
    }
}

#pragma mark - Client Methods

-(void)retrieveCategories {
    
    [self.activityIndicator setHidden:NO];
    [self.activityIndicator startAnimating];
    
    [[Client sharedInstance] getWattPadCategoriesWithSuccess:^(NSArray *categories) {
        [self setupSegmentedMenuWithCategories:categories];
        [self.activityIndicator stopAnimating];
        [self.activityIndicator setHidden:YES];
    } andFailure:^(NSError *error) {
        NSLog(@"%@", error.description);
    }];
    
}

//- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
//    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
//    if(UIInterfaceOrientationIsPortrait(toInterfaceOrientation)){
//        self.segmentedControl.frame = self.viewMenu.frame;
//
//    }
//    else if(UIInterfaceOrientationIsLandscape(toInterfaceOrientation)){
//        self.segmentedControl.frame = self.viewMenu.frame;
//    }
//}

@end
