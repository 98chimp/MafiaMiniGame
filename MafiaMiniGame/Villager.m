//
//  Villager.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Villager.h"

@implementation Villager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numberOfInitialVillagers = 5;
        _numberOfRemainingVillagers = _numberOfInitialVillagers;
    }
    return self;
}

-(int)numberOfRemainingVillagers:(int)numberOfRemainingVillagers
{
    self.numberOfRemainingVillagers -= 1 ;
    return self.numberOfRemainingVillagers;
}

@end
