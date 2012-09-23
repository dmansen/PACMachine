//
//  PMDonateViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMDonateViewController.h"
#import "PMLobbyistDonated1ViewController.h"
#import "PMLobbyistDonated10ViewController.h"
#import "PMLobbyistDonated20ViewController.h"
#import "PMLobbyistDonated100ViewController.h"

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PMDonateViewController *viewController = [segue destinationViewController];
    viewController.lobbyist = self.lobbyist;
}

- (IBAction)donate1Dollar:(id)sender {
    NSLog(@"got 1 dollar");
    if(self.lobbyist) {
        PMLobbyistDonated1ViewController *viewController = [sender destinationViewController];
        viewController.amount = @"1";
        viewController.lobbyist = YES;
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        PMLobbyistDonated1ViewController *viewController = [sender destinationViewController];
        viewController.lobbyist = NO;
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
}

- (IBAction)donate10Dollars:(id)sender {
    NSLog(@"got 10 dollar");

    if(self.lobbyist) {
        PMLobbyistDonated10ViewController *viewController = [sender destinationViewController];
        viewController.amount = @"10";
        viewController.lobbyist = YES;
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        PMLobbyistDonated1ViewController *viewController = [sender destinationViewController];
        viewController.lobbyist = NO;
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}

- (IBAction)donate20Dollars:(id)sender {
    NSLog(@"got 20 dollar");

    if(self.lobbyist) {
        PMLobbyistDonated20ViewController *viewController = [sender destinationViewController];
        viewController.amount = @"20";
        viewController.lobbyist = YES;

        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        PMLobbyistDonated20ViewController *viewController = [sender destinationViewController];
        viewController.lobbyist = NO;
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}

- (IBAction)donate100Dollars:(id)sender {
    NSLog(@"got 100 dollar");

    if(self.lobbyist) {
        PMLobbyistDonated100ViewController *viewController = [sender destinationViewController];
        viewController.amount = @"100";
        viewController.lobbyist = YES;
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        PMLobbyistDonated20ViewController *viewController = [sender destinationViewController];
        viewController.lobbyist = NO;
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}


@end
