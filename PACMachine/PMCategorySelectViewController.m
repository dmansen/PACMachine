//
//  PMCategorySelectViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMCategorySelectViewController.h"
#import "PMDonateViewController.h"

@interface PMCategorySelectViewController ()

@end

@implementation PMCategorySelectViewController

@synthesize lobbyist;

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
    UIImage *background = [UIImage imageNamed:@"atm_2_Page_2.jpg"];
    
    CGRect rect = CGRectMake(0, 0, 1068, 730);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.image = background;
    
    [self.view addSubview:imageView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"categoryToDonate"]) {
        PMDonateViewController *viewController = [segue destinationViewController];
        viewController.lobbyist = self.lobbyist;
    }
}

- (IBAction)lobbyistButtonPressed:(id)sender {
    self.lobbyist = YES;
    [self performSegueWithIdentifier:@"categoryToDonate" sender:sender];
}

- (IBAction)personButtonPressed:(id)sender {
    self.lobbyist = NO;
    [self performSegueWithIdentifier:@"categoryToDonate" sender:sender];
}
@end
