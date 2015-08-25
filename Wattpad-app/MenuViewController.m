//
//  MenuViewController.m
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "MenuViewController.h"
#import "ListTableViewController.h"


@interface MenuViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewMenu;
@property (strong, nonatomic) HMSegmentedControl *segmentedControl;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // Segmented control with scrolling
    self.segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:@[@"One", @"Two", @"Three", @"Four", @"Five", @"Six", @"Seven", @"Eight"]];
    self.segmentedControl.frame = self.viewMenu.frame;
    
    [self.segmentedControl addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
    [self.viewMenu addSubview:self.segmentedControl];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    if(UIInterfaceOrientationIsPortrait(toInterfaceOrientation)){
        self.segmentedControl.frame = self.viewMenu.frame;
        
    }
    else if(UIInterfaceOrientationIsLandscape(toInterfaceOrientation)){
        self.segmentedControl.frame = self.viewMenu.frame;
    }
}

- (void)segmentedControlChangedValue:(HMSegmentedControl *)segmentedControl {
    NSLog(@"Selected index %ld (via UIControlEventValueChanged)", (long)segmentedControl.selectedSegmentIndex);
}

@end
