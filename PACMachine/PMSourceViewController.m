//
//  PMSourceViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMSourceViewController.h"

@interface PMSourceViewController ()

@end

@implementation PMSourceViewController

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
    SEL resetSelector = @selector(resetSystem);
    
    NSMethodSignature * sig = nil;
    sig = [[self class] instanceMethodSignatureForSelector:resetSelector];
    
    NSInvocation * myInvocation = nil;
    myInvocation = [NSInvocation invocationWithMethodSignature:sig];
    [myInvocation setTarget:self];
    [myInvocation setSelector:resetSelector];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:5 invocation:myInvocation repeats:NO];
}

- (void)resetSystem {
    [self performSegueWithIdentifier:@"next" sender:self];
}

- (NSString *)backgroundFileName {
    return @"ASM_v2_Page_11.jpg";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)nextPressed:(id)sender {
    [self.timer invalidate];
    [self performSegueWithIdentifier:@"next" sender:sender];
}
@end
