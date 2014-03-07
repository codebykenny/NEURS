//
//  MySidePanelController.m
//  Neurs
//
//  Created by Kenneth Hernandez on 3/6/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "MySidePanelController.h"
#import "JASidePanelController.h"
#import "CenterViewController.h"

@interface MySidePanelController ()

@end

@implementation MySidePanelController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)awakeFromNib{
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"LeftViewController"]];
    [self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"NavigationController"]];
    //[self setRightPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"rightViewController"]];
}


@end
