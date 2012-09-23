//
//  PMDonateViewController.h
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMBackgroundImageViewController.h"

@interface PMDonateViewController : PMBackgroundImageViewController

@property (readwrite) BOOL lobbyist;
@property (readwrite) int donationAmount;
- (IBAction)donate10Dollars:(id)sender;
- (IBAction)donate1Dollar:(id)sender;
- (IBAction)donate20Dollars:(id)sender;
- (IBAction)donate100Dollars:(id)sender;

@end
