//
//  GameRules.m
//  Scoreboard
//
//  Created by Brian Munoz on 9/4/14.
//  Copyright (c) 2014 Brian Munoz. All rights reserved.
//

#import "Game.h"

@implementation Game

-(id) initWithPointStepFactor:(int) stepFactor{
    if ( self = [super init]){
        self-> _pointStepFactor = stepFactor;
        return self;
    }
    return nil;
}

-(NSString *) endGame{
    int differential = self->_teamOneScore - self->_teamTwoScore;
    
    if (differential > 0){
        
        return [NSString stringWithFormat:@"Team One wins by %d points",differential];
    }
    if (differential == 0){
        return @"there was a tie";
    }
    
    differential = abs(differential);
    
    return [NSString stringWithFormat:@"Team Two wins by %d points",differential];

}

@end
