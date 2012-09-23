//
//  PMMakeDonationViewController.h
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMResultsViewController.h"

@interface PMMakeDonationViewController : PMBackgroundImageViewController
- (IBAction)next:(id)sender;

@property (readwrite, nonatomic) NSString *amount;
@property (readwrite) BOOL lobbyist;
@end
