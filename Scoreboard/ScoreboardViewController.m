//
//  ViewController.m
//  Scoreboard
//
//  Created by Brian Munoz on 9/3/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ScoreboardViewController.h"

@interface ScoreboardViewController ()

@end

@implementation ScoreboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (nil == _currentGameRules){
        _currentGameRules = [[GameRules alloc] initWithNameAndIncrement:@"single points" Increment:1];
    }
    
    self.teamOneScore.text = @"0";
    self.teamTwoScore.text = @"0";
    
    [self.teamOneStepper setStepValue:_currentGameRules.pointIncrement];
    [self.teamTwoStepper setStepValue:_currentGameRules.pointIncrement];
    
    self.teamOneStepper.value = 0.0;
    self.teamTwoStepper.value = 0.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeTeamOneScore:(UIStepper *)stepper{
    self.teamOneScore.text = [NSString stringWithFormat:@"%.f", stepper.value];
    
}


-(IBAction)changeTeamTwoScore:(UIStepper *)stepper{
    self.teamTwoScore.text = [NSString stringWithFormat:@"%.f", stepper.value];
    
}


- (void)segueToEditGameRules{

}
@end
