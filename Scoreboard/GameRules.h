//
//  GameRules.h
//  Scoreboard
//
//  Created by Brian Munoz on 9/4/14.
//  Copyright (c) 2014 Brian Munoz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameRules : NSObject
@property (readonly) NSString* name;
@property (readonly) NSInteger* pointIncrement;

-(id) initWithNameAndIncrement:(NSString *)name Increment:(NSInteger *) increment;

@end
