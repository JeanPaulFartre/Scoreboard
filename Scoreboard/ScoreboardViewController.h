//
//  ViewController.h
//  Scoreboard
//
//  Created by Brian Munoz on 9/3/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//
#import "Game.h"
#import <UIKit/UIKit.h>

@interface ScoreboardViewController : UIViewController <UIAlertViewDelegate>

@property (readwrite, nonatomic) Game *model;

@property (readwrite, nonatomic) IBOutlet UILabel *teamOneScore;
@property (readwrite, nonatomic) IBOutlet UILabel *teamTwoScore;

@property (readwrite, nonatomic) IBOutlet UIStepper *teamOneStepper;
@property (readwrite, nonatomic) IBOutlet UIStepper *teamTwoStepper;

-(IBAction)changeTeamOneScore:(UIStepper *)stepper;
-(IBAction)changeTeamTwoScore:(UIStepper *)stepper;
-(IBAction)segueToEditGameRules;
-(void)setModel:(Game *)model;
-(void)resetGame;
-(void)recoverGame:(Game *)model;
-(IBAction)endGame;

@end
