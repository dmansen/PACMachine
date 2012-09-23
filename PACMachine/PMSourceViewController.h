//
//  PMSourceViewController.h
//  PACMachine
//
//  Created by Derek Mansen on 9/23/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import "PMBackgroundImageViewController.h"

@interface PMSourceViewController : PMBackgroundImageViewController
- (IBAction)nextPressed:(id)sender;
@property (readwrite, nonatomic) NSTimer *timer;
@end
