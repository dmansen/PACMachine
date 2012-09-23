//
//  PMViewController.m
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMViewController.h"

@interface PMViewController ()

@end

@implementation PMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *background = [UIImage imageNamed:@"atm_2_Page_1.jpg"];
    
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
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"introToCategorySelect"]) {
        NSLog(@"in the segue class");
        // send whatever you need to the new view controller
        NSLog(@"%@", [segue destinationViewController]);
    }
}

- (IBAction)initiateButtonPressed:(id)sender {
    NSLog(@"Made it!");
    [self performSegueWithIdentifier:@"introToCategorySelect" sender: sender];
}
@end
