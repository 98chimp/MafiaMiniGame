//
//  Villager.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "GameObject.h"

@interface Villager : GameObject

@property (nonatomic, assign) int numberOfInitialVillagers;
@property (nonatomic, assign) int numberOfRemainingVillagers;

-(int)numberOfRemainingVillagers:(int)numberOfInitialVillagers;

@end
