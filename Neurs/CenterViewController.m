//
//  CenterViewController.m
//  Neurs
//
//  Created by Kenneth Hernandez on 3/6/14.
//  Copyright (c) 2014 Kenneth Hernandez. All rights reserved.
//

#import "CenterViewController.h"

@interface CenterViewController ()

@end

static NSMutableData *webData;
@implementation CenterViewController

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
    self.title=@"Center";
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
    
    UIImage *logo = [UIImage imageNamed:@"NeursLogo.png"];
    UIImageView *logoView = [[UIImageView alloc] initWithImage:logo];
    logoView.frame = CGRectMake(0,0,30,35);
//    logoView.frame.size.width = 30;
    self.navigationItem.titleView = logoView;
    
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
}

- (IBAction)loginPost:(id)sender {
    NSString *post = [[NSString alloc] initWithFormat:@"data[Account][email]=%@&data[Account][password]=%@",_username.text,_password.text];
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    
    NSURL *url = [NSURL URLWithString:@"https://en.neurs.com/account/login"];

    
    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
    [theRequest setHTTPMethod:@"POST"];
    [theRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [theRequest setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [theRequest setHTTPBody:postData];
    
    
    NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self startImmediately:YES];
    
    if( theConnection )
    {
    //    [theConnection start];
    }
    else
    {
        NSLog(@"Internet problem maybe...");
    }

}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [webData setLength: 0];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if(webData == nil)
        webData = [[NSMutableData alloc] init];
    [webData appendData:data];
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    // show error
    NSLog([error description]);
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *loginStatus = [[NSString alloc] initWithBytes: [webData mutableBytes] length:[webData length] encoding:NSUTF8StringEncoding];
 //   greetingLabel.text = @"";
    NSLog(@"after compareing data is %@", loginStatus);
    if (([loginStatus rangeOfString:@"Log Out"].location == NSNotFound)) {
        NSLog(@"Wrong Password!");
        // right login
    } else {
        // wrong login
//        greetingLabel.hidden = NO;
        NSLog(@"Correct!");
    }
    

}
@end
