//
//  SegmentedControlHelper.m
//  Wattpad-app
//
//  Created by Jean Vinge on 28/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "SegmentedControlHelper.h"

@interface SegmentedControlHelper ()

@property (nonatomic, strong) HMSegmentedControl *segmentedControl;

@end

@implementation SegmentedControlHelper

- (instancetype)initWithView:(UIView *)view titleArray:(NSArray *)array {
    
    if (self = [self init]) {
        
        // Segmented control with scrolling
        self.segmentedControl = [[HMSegmentedControl alloc] initWithSectionTitles:array];
        self.segmentedControl.selectionStyle = HMSegmentedControlBorderTypeBottom;
        self.segmentedControl.frame = view.frame;
        [self.segmentedControl addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
        [view addSubview:self.segmentedControl];
    }
    return self;
}

- (void)segmentedControlChangedValue:(HMSegmentedControl *)segmentedControl {
    //NSLog(@"Selected index %ld (via UIControlEventValueChanged)", (long)segmentedControl.selectedSegmentIndex);
    if ([self.delegate respondsToSelector:@selector(didSelectTextWithIndex:)]) {
        [self.delegate didSelectTextWithIndex:segmentedControl.selectedSegmentIndex];
    }
    
}


@end
