//
//  TabbarViewController.m
//  Tumblr Nav
//
//  Created by Gwen Brinsmead on 7/9/14.
//  Copyright (c) 2014 Gwen Brinsmead. All rights reserved.
//

#import "TabbarViewController.h"

#import "SearchViewController.h"
#import "HomeViewController.h"
#import "ProfileViewController.h"
#import "ActivityViewController.h"
#import "ComposeViewController.h"

@interface TabbarViewController ()

@property (nonatomic, strong) SearchViewController *searchViewController;
@property (nonatomic, strong) HomeViewController *homeViewController;
@property (nonatomic, strong) ProfileViewController *profileViewController;
@property (nonatomic, strong) ActivityViewController *activityViewController;
@property (nonatomic, strong) ComposeViewController *composeViewController;

@property (weak, nonatomic) IBOutlet UIImageView *tooltipImageView;

- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposeButton:(id)sender;
- (IBAction)onProfileButton:(id)sender;
- (IBAction)onActivityButton:(id)sender;


@property (weak, nonatomic) IBOutlet UIView *contentView;



@end

@implementation TabbarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.searchViewController = [[SearchViewController alloc] init];
        self.homeViewController = [[HomeViewController alloc] init];
        self.profileViewController = [[ProfileViewController alloc] init];
        self.activityViewController = [[ActivityViewController alloc] init];
        self.composeViewController = [[ComposeViewController alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"view did load");
    [self.contentView addSubview:self.homeViewController.view];

    self.tooltipImageView.hidden = NO;
    [UIView animateWithDuration:0.5 delay:0 options:(UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationCurveEaseInOut ) animations:^{
        
        self.tooltipImageView.center = CGPointMake(self.tooltipImageView.center.x, self.tooltipImageView.center.y - 10);
        
    }completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)onHomeButton:(id)sender {
    [self.contentView addSubview:self.homeViewController.view];
    self.tooltipImageView.hidden = NO;
}

- (IBAction)onSearchButton:(id)sender {
    [self.contentView addSubview:self.searchViewController.view];
    self.tooltipImageView.hidden = YES;
}

- (IBAction)onComposeButton:(id)sender {
    [self presentViewController:self.composeViewController animated:NO completion:nil];
    self.tooltipImageView.hidden = NO;
}

- (IBAction)onProfileButton:(id)sender {
    [self.contentView addSubview:self.profileViewController.view];
    self.tooltipImageView.hidden = NO;
}

- (IBAction)onActivityButton:(id)sender {
    [self.contentView addSubview:self.activityViewController.view];
    self.tooltipImageView.hidden = NO;
}

@end
