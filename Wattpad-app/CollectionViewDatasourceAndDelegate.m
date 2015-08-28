//
//  CollectionViewDatasourceAndDelegate.m
//  Wattpad-app
//
//  Created by Mateus Campos on 26/08/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

#import "CollectionViewDatasourceAndDelegate.h"

@interface CollectionViewDatasourceAndDelegate ()

@property (nonatomic, weak) UICollectionView *collectionView;

@end

@implementation CollectionViewDatasourceAndDelegate

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView {
    
    self = [super init];
    if (self) {
        self.collectionView = collectionView;
    }
    return self;
}

#pragma mark - UICollectionViewDataSource/Delegate

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    
    return cell;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

@end
