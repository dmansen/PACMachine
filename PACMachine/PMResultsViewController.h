//
//  PMResultsViewController.h
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PMBackgroundImageViewController.h"

@interface PMResultsViewController : PMBackgroundImageViewController
- (NSString *)resetSegueName;
- (IBAction)nextPressed:(id)sender;

@property (readwrite, nonatomic) NSString *amount;
@property (readwrite) BOOL lobbyist;
@property (readwrite, nonatomic) NSTimer *timer;
@end
