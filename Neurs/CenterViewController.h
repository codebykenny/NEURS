//
//  CenterViewController.h
//  Neurs
//
//  Created by Kenneth Hernandez on 3/6/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "LeftViewController.h"

@interface CenterViewController : ViewController <NSURLConnectionDelegate>
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *username;
- (IBAction)loginPost:(id)sender;

@end
