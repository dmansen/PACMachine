//
//  PMLobbyistDonatedViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMLobbyistDonatedViewController.h"

@interface PMLobbyistDonatedViewController ()

@end

@implementation PMLobbyistDonatedViewController

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

- (NSString *)resetSegueName {
    return @"resetSystemLobbyist";
}

- (NSString *)backgroundFileName {
    return @"atm_2_Page_4.jpg";
}

@end
