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

@property (readwrite, nonatomic) NSString *amount;
@property (readwrite) BOOL lobbyist;
@end
