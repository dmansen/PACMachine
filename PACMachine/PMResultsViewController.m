//
//  PMResultsViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMResultsViewController.h"

@interface PMResultsViewController ()

@end

@implementation PMResultsViewController

@synthesize amount;
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
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"setting up timer");
    SEL resetSelector = @selector(resetSystem);
    
    NSMethodSignature * sig = nil;
    sig = [[self class] instanceMethodSignatureForSelector:resetSelector];
    
    NSInvocation * myInvocation = nil;
    myInvocation = [NSInvocation invocationWithMethodSignature:sig];
    [myInvocation setTarget:self];
    [myInvocation setSelector:resetSelector];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:10 invocation:myInvocation repeats:NO];
    [self.timer invalidate];
}

- (void)resetSystem {
    [self performSegueWithIdentifier:@"next" sender:self];
}

- (NSString *)resetSegueName {
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (IBAction)nextPressed:(id)sender {
    [self.timer invalidate];
    [self performSegueWithIdentifier:@"next" sender:sender];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
