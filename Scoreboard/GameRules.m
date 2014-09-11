//
//  GameRules.m
//  Scoreboard
//
//  Created by Brian Munoz on 9/4/14.
//  Copyright (c) 2014 Brian Munoz. All rights reserved.
//

#import "GameRules.h"

@implementation GameRules



-(id) initWithNameAndIncrement:(NSString *)name Increment:(int) increment{
    if ( self = [super init]){
        self->_name = name;
        self-> _pointIncrement = increment;
        return self;
    }
    return nil;
}

@end
