//
//  PMLobbyistDonated10ViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMLobbyistDonated10ViewController.h"

@interface PMLobbyistDonated10ViewController ()

@end

@implementation PMLobbyistDonated10ViewController

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
    return @"ASM_v2_Page_07.jpg";
}

@end
