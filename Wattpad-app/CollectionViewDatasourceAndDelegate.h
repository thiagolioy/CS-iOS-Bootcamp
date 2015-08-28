//
//  CollectionViewDatasourceAndDelegate.h
//  Wattpad-app
//
//  Created by Mateus Campos on 26/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CollectionViewDatasourceAndDelegate : NSObject <UICollectionViewDataSource, UICollectionViewDelegate>

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView ;

@end
