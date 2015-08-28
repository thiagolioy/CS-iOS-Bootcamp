//
//  SegmentedControlHelper.h
//  Wattpad-app
//
//  Created by Jean Vinge on 28/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "HMSegmentedControl.h"


@protocol SegmentedControlHelperDelegate <NSObject>

- (void)didSelectTextWithIndex:(NSInteger)index;

@end

@interface SegmentedControlHelper : HMSegmentedControl

@property (nonatomic, weak) id<SegmentedControlHelperDelegate> delegate;

- (instancetype)initWithView:(UIView *)view titleArray:(NSArray *)array;

@end
