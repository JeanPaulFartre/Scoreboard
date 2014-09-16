//
//  DefineGameRulesViewController.m
//  Scoreboard
//
//  Created by Brian Munoz on 9/4/14.
//  Copyright (c) 2014 Brian Munoz. All rights reserved.
//

#import "DefineGameRulesViewController.h"
#import "ScoreboardViewController.h"

@interface DefineGameRulesViewController ()

@end

@implementation DefineGameRulesViewController

int lastStep;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self->_pointStepFactor.text = [NSString stringWithFormat:@"%d",self->_model.pointStepFactor];
}

-(void)setModel:(Game *)model{
    _model = model;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *identifier = [segue identifier];
    ScoreboardViewController *scoreboard = [segue destinationViewController];
    
    //make sure to reset the scores if the user decides to change the step factor
    if ([identifier isEqual:@"ConfirmGameRules"]){
        self->_model.teamOneScore = 0;
        self->_model.teamTwoScore = 0;
        self->_model.pointStepFactor = self->_pointStepFactor.text.intValue;
    }
    [scoreboard setModel:self->_model];

}

@end
