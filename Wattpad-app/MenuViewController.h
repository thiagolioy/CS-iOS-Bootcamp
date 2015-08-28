
//
//  MenuViewController.h
//  Wattpad-app
//
//  Created by Jean Vinge on 24/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuViewControllerDelegate <NSObject>

- (void)didClickInTextWithIndex:(NSInteger)index;

@end

@interface MenuViewController : UIViewController

@property (weak, nonatomic) id<MenuViewControllerDelegate> delegate;

@end
