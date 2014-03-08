//
//  DashboardViewController.h
//  Neurs
//
//  Created by Kenneth Hernandez on 3/7/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "LeftViewController.h"
#import "ReferedFlowLayout.h"

@interface DashboardViewController : ViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, weak) IBOutlet ReferedFlowLayout *referedFlowLayout;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;



@end
