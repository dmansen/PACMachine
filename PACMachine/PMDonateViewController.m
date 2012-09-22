//
//  PMDonateViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMDonateViewController.h"

@interface PMDonateViewController ()

@end

@implementation PMDonateViewController

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
    UIImage *background = [UIImage imageNamed:@"atm_2_Page_3.jpg"];
    
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

- (IBAction)donateActionInitiated:(id)sender {
    if(self.lobbyist) {
        [self performSegueWithIdentifier:@"donateAsLobbyist" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
}
@end
