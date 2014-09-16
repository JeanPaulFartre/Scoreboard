//
//  GameRules.h
//  Scoreboard
//
//  Created by Brian Munoz on 9/4/14.
//  Copyright (c) 2014 Brian Munoz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject
@property (readwrite, nonatomic) NSString* name;
@property (readwrite, nonatomic) int pointStepFactor;
@property (readwrite, nonatomic) int teamOneScore;
@property (readwrite, nonatomic) int teamTwoScore;

-(id) initWithPointStepFactor:(int) stepFactor;
-(NSString *)endGame;
@end
