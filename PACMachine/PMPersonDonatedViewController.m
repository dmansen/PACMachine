//
//  PMPersonDonatedViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMPersonDonatedViewController.h"

@interface PMPersonDonatedViewController ()

@end

@implementation PMPersonDonatedViewController

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
    UIImage *background = [UIImage imageNamed:@"atm_2_Page_5.jpg"];
    
    CGRect rect = CGRectMake(0, 0, 1068, 762);
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

- (void)viewDidAppear:(BOOL)animated
{
    SEL resetSelector = @selector(resetSystem);
    
    NSMethodSignature * sig = nil;
    sig = [[self class] instanceMethodSignatureForSelector:resetSelector];
    
    NSInvocation * myInvocation = nil;
    myInvocation = [NSInvocation invocationWithMethodSignature:sig];
    [myInvocation setTarget:self];
    [myInvocation setSelector:resetSelector];
    
    [NSTimer scheduledTimerWithTimeInterval:20 invocation:myInvocation repeats:NO];
}

- (void)resetSystem {
    [self performSegueWithIdentifier:@"resetSystemPerson" sender:self];
}

@end
