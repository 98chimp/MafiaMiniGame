//
//  Sherrif.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "GameObject.h"
#import "PresentationObject.h"
#import "Villager.h"

@interface Sherrif : GameObject

@property (strong, nonatomic) PresentationObject *presentationObject;
@property (strong, nonatomic) Villager *villager;
@property (copy, nonatomic) NSArray *questions;
@property (copy, nonatomic) NSDictionary *answers;
@property (assign, nonatomic) NSInteger pass;

- (NSString *)randomQuestion;
- (NSInteger)evaluateAnswer:(NSInteger)answer;
- (BOOL)catchMafioso;

@end
