//
//  ViewController.m
//  Neurs
//
//  Created by Kenneth Hernandez on 3/6/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "LeftViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self drawView];
	// Do any additional setup after loading the view, typically from a nib.
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
}

@end
