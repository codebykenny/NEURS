//
//  DashboardViewController.m
//  Neurs
//
//  Created by Kenneth Hernandez on 3/7/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "DashboardViewController.h"
#import "ReferedFlowLayout.h"
#import "ReferredCell.h"

@interface DashboardViewController ()

@end
static NSMutableArray *array;

@implementation DashboardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self drawView];
    self.collectionView.backgroundColor = [UIColor clearColor];
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CatCell" bundle:nil] forCellWithReuseIdentifier:@"CELL"];
    if(array == nil)
        array = [[NSMutableArray alloc] init];
    
    array = [NSMutableArray arrayWithObjects:@"Kenneth", @"Pedro", @"Kevin", @"Franc", @"Lazaro", nil];
    
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)drawView{
    //---------------
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"NeursBG"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    //---------------
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.129 green:0.49 blue:0.733 alpha:1];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.title = @"Dashboard";
    
    [self.navigationController.navigationBar setTitleTextAttributes: @{
                                                                       NSForegroundColorAttributeName:  [UIColor whiteColor],
                                                                       NSFontAttributeName: [UIFont fontWithName:@"Avenir Heavy" size:20.0f]
                                                                       }];
  
    [[UIBarButtonItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIFont fontWithName:@"HelveticaNeue-Thin" size:20.0],
      NSFontAttributeName,
      nil]
                                                forState:UIControlStateNormal];
    
    self.navigationItem.hidesBackButton = TRUE;
    

    
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ReferredCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"%@",array[indexPath.row]];
    [cell.layer setCornerRadius:8.0f];
    [cell.layer setMasksToBounds:YES];
    [cell.layer setBorderWidth:0.0f];
    return cell;
}

#pragma mark - View Rotation




@end
