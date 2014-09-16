//
//  ViewController.m
//  Scoreboard
//
//  Created by Brian Munoz on 9/3/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ScoreboardViewController.h"
#import "DefineGameRulesViewController.h"

@interface ScoreboardViewController ()

@end

@implementation ScoreboardViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (nil == _model){
        _model = [[Game alloc] initWithPointStepFactor:1];
        
    }
    [self initializeViews];
  
}

-(void)resetGame {
    self->_model.teamOneScore = 0;
    self->_model.teamTwoScore = 0;
    [self initializeViews];
}

-(void)recoverGame:(Game *)model{
    self->_teamOneScore.text = [NSString stringWithFormat:@"%d", model.teamOneScore];
    self->_teamOneScore.text = [NSString stringWithFormat:@"%d", model.teamTwoScore];
    self->_teamTwoStepper.value = model.teamTwoScore;
    self->_teamOneStepper.value = model.teamOneScore;
    self->_teamOneStepper.stepValue = model.pointStepFactor;
    self->_teamTwoStepper.stepValue = model.pointStepFactor;
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self resetGame];
    
}

-(void)initializeViews{
    
    self.teamOneScore.text = [NSString stringWithFormat:@"%d", _model.teamOneScore];
    self.teamTwoScore.text = [NSString stringWithFormat:@"%d", _model.teamTwoScore];
    
    [self.teamOneStepper setStepValue:self->_model.pointStepFactor];
    [self.teamTwoStepper setStepValue:self->_model.pointStepFactor];
    
    self.teamOneStepper.value = _model.teamOneScore;
    self.teamTwoStepper.value = _model.teamTwoScore;
}

-(IBAction)endGame{
    NSString *winner = [self->_model endGame];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over!" message:winner delegate:self cancelButtonTitle: @"ok" otherButtonTitles: nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeTeamOneScore:(UIStepper *)stepper{
    self.teamOneScore.text = [NSString stringWithFormat:@"%.f", stepper.value];
    self->_model.teamOneScore = self.teamOneScore.text.intValue;
}


-(IBAction)changeTeamTwoScore:(UIStepper *)stepper{
    self.teamTwoScore.text = [NSString stringWithFormat:@"%.f", stepper.value];
    self->_model.teamTwoScore = self.teamTwoScore.text.intValue;
}

-(IBAction)segueToEditGameRules {
    [self performSegueWithIdentifier:@"defineGameRulesSegue" sender:self];
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DefineGameRulesViewController *defineGameRules = [segue destinationViewController];
    [defineGameRules setModel:self->_model];
}

-(void)setModel:(Game *)model{
    self->_model = model;
    [self initializeViews];
    
}


@end
