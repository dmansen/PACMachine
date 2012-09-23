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
@synthesize amount;

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
    viewController.amount = self.amount;
}

- (IBAction)donate1Dollar:(id)sender {
    NSLog(@"got 1 dollar");
    if(self.lobbyist) {
        self.amount = @"1";
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}

- (IBAction)donate10Dollars:(id)sender {
    NSLog(@"got 10 dollar");

    if(self.lobbyist) {
        self.amount = @"10";
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}

- (IBAction)donate20Dollars:(id)sender {
    NSLog(@"got 20 dollar");

    if(self.lobbyist) {
        self.amount = @"20";
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}

- (IBAction)donate100Dollars:(id)sender {
    NSLog(@"got 100 dollar");

    if(self.lobbyist) {
        self.amount = @"100";
        [self performSegueWithIdentifier:@"next" sender:sender];
    } else {
        [self performSegueWithIdentifier:@"next" sender:sender];
    }
}


@end
