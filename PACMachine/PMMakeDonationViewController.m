//
//  PMMakeDonationViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMMakeDonationViewController.h"

@interface PMMakeDonationViewController ()

@end

@implementation PMMakeDonationViewController

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

- (NSString *)backgroundFileName {
    return @"ASM_v2_Page_05.jpg";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)next:(id)sender {
    if(self.lobbyist) {
        NSString *segue = [NSString stringWithFormat:@"donateAsLobbyist%@", self.amount];
        NSLog(@"Doing segue: %@", segue);
        [self performSegueWithIdentifier:segue sender:sender];
    } else {
        [self performSegueWithIdentifier:@"donateAsPerson" sender:sender];
    }
    
}
@end
