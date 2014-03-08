//
//  ReferralDescriptionViewController.m
//  Neurs
//
//  Created by Kenneth Hernandez on 3/8/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "ReferralDescriptionViewController.h"

@interface ReferralDescriptionViewController ()

@end

@implementation ReferralDescriptionViewController

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
    

    
}


@end
