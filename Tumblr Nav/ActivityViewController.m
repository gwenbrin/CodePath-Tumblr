//
//  TrendingViewController.m
//  Tumblr Nav
//
//  Created by Gwen Brinsmead on 7/9/14.
//  Copyright (c) 2014 Gwen Brinsmead. All rights reserved.
//

#import "ActivityViewController.h"
#import "LoginViewController.h"

@interface ActivityViewController ()

@property (nonatomic, strong) LoginViewController *loginViewController;
- (IBAction)onLogin:(id)sender;

@end

@implementation ActivityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.loginViewController = [[LoginViewController alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogin:(id)sender {
    
    NSLog(@"login login login");
    
    [self presentViewController:self.loginViewController animated:NO completion:nil];
    
}
@end
