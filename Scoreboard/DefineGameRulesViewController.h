//
//  DefineGameRulesViewController.h
//  Scoreboard
//
//  Created by Brian Munoz on 9/4/14.
//  Copyright (c) 2014 Brian Munoz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"

@interface DefineGameRulesViewController : UIViewController

@property (readwrite, nonatomic)Game *model;
@property (readwrite, nonatomic) IBOutlet UITextField *pointStepFactor;
-(void) setModel:(Game *)model;

@end
