//
//  ReferedFlowLayout.h
//  Neurs
//
//  Created by Kenneth Hernandez on 3/7/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReferedFlowLayout : UICollectionViewLayout

@property (nonatomic) UIEdgeInsets itemInsets;
@property (nonatomic) CGSize itemSize;
@property (nonatomic) CGFloat interItemSpacingY;
@property (nonatomic) NSInteger numberOfColumns;
@property (nonatomic, strong) NSDictionary *layoutInfo;


@end
