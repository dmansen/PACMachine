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
@synthesize donationAmount;

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

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSString *)backgroundFileName {
    return @"ASM_v2_Page_04.jpg";
}

- (IBAction)donate1Dollar:(id)sender {
    if(self.lobbyist) {
        [self performSegueWithIdentifier:@"donateAsLobbyist1" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
}

- (IBAction)donate10Dollars:(id)sender {
    if(self.lobbyist) {
        [self performSegueWithIdentifier:@"donateAsLobbyist10" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
}

- (IBAction)donate20Dollars:(id)sender {
    if(self.lobbyist) {
        [self performSegueWithIdentifier:@"donateAsLobbyist20" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
}

- (IBAction)donate100Dollars:(id)sender {
    if(self.lobbyist) {
        [self performSegueWithIdentifier:@"donateAsLobbyist100" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
}

@end
