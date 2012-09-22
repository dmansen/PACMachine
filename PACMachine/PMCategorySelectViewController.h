//
//  PMCategorySelectViewController.h
//  PACMachine
//
//  Created by Derek Mansen on 9/22/12.
//  Copyright (c) 2012 ArtHack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PMCategorySelectViewController : UIViewController

@property (readwrite) BOOL lobbyist;

- (IBAction)lobbyistButtonPressed:(id)sender;

- (IBAction)personButtonPressed:(id)sender;

@end
