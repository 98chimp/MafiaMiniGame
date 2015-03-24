//
//  PresentationObject.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "GameObject.h"
#import "Villager.h"

@interface PresentationObject : GameObject

@property (nonatomic, strong) NSString *customMessage;
@property (nonatomic, assign) int numberToPresent;
@property (nonatomic, assign) bool gameOver;

@end
