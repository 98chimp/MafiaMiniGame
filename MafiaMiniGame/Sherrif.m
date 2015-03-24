//
//  Sherrif.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Sherrif.h"

@implementation Sherrif

- (instancetype)init
{
    self = [super init];
    if (self) {
        _answers = @{
                     @"Ants stretch when they wake up.": @"TRUE",
                     @"Ostriches can run faster than horses.": @"TRUE",
                     @"Olympic gold medals are actually made mostly of silver.": @"TRUE",
                     @"You are born with 300 bones; by the time you are an adult you will have 206.": @"TRUE",
                     @"It takes about 8 minutes for light from the Sun to reach Earth.": @"TRUE",
                     @"Some bamboo plants can grow almost a meter in just one day.": @"TRUE",
                     @"The state of Florida is bigger than England.": @"TRUE",
                     @"Some penguins can leap 2-3 meters out of the water.": @"TRUE",
                     @"On average, it takes 66 days to form a new habit.": @"TRUE",
                     @"Mammoths still walked the Earth when the Great Pyramid was being built.": @"TRUE",
                     @"There are more lifeforms living on our skin than people living on the planet.": @"TRUE",
                     @"See otters sleep while holding hands.": @"TRUE",
                     @"Leonardo da Vinci could simultaneously write with one hand and draw with the other.": @"TRUE",
                     @"If you could remove the empty space from all the atoms that make up people, you can fit the population of the earth inside one apple!.": @"TRUE",
                     @"Pinocchio is Italian for 'pine head'.": @"TRUE",
                     @"Donald Duck comics were banned from Finland because he doesn’t wear pants!": @"TRUE",
                     @"There are more than 10 million bricks in the Empire State Building!": @"TRUE",
                     @"Camels have three eyelids to protect themselves from blowing sand!": @"TRUE",
                     @"Dolphins sleep with one eye open!": @"TRUE",
                     @"In the White House, there are 13,092 knives, forks and spoons!": @"TRUE",
                     @"Recycling one glass jar, saves enough energy to watch TV for 3 hours!": @"TRUE",
                     @"Owls are one of the only birds who can see the color blue!": @"TRUE",
                     @"Honeybees have a type of hair on their eyes!": @"TRUE",
                     @"A jellyfish is 95 percent water!": @"TRUE",
                     @"Only one person in two billion will live to be 116 or older.": @"TRUE",
                     @"Bullet proof vests, fire escapes, windshield wipers, and laser printers were all invented by women.": @"TRUE",
                     @"Humans are 98% chimp!": @"TRUE",
                     };
        _questions = [self.answers allKeys];
        _presentationObject = self.presentationObject;
        _villager = self.villager;
        _pass = self.pass;
    }
    return self;
}


- (NSString *)randomQuestion {
    int random = arc4random_uniform((int)self.questions.count);
    return [self.questions objectAtIndex:random];
}

- (NSInteger)evaluateAnswer:(NSInteger)answer
{
    if (self.villager.numberOfRemainingVillagers != 0) {
        if (answer == 0) {
            if ([self catchMafioso]) {
                self.presentationObject.customMessage = @"You've caught the Mafioso! You Win!!";
                self.presentationObject.gameOver = YES;
                self.pass = 1;
            }
            else {
                self.presentationObject.customMessage = @"You almost caught the Mafioso; better luck next time!";
                self.presentationObject.numberToPresent = [self.villager numberOfRemainingVillagers:self.villager.numberOfRemainingVillagers];
                self.presentationObject.gameOver = NO;
                self.pass = 2;
            }
        }
        else {
            self.presentationObject.customMessage = @"You missed the Mafioso altogether. Try again!";
            self.presentationObject.numberToPresent = [self.villager numberOfRemainingVillagers:self.villager.numberOfRemainingVillagers];
            self.presentationObject.gameOver = NO;
            self.pass = 3;
        }
    }
    else {
        self.presentationObject.customMessage = @"You lose! The Mafioso has killed all the villagers!!";
        self.presentationObject.gameOver = YES;
        self.pass = 4;
    }
    return self.pass;
}

- (BOOL)catchMafioso
{
    bool catch;
    int random = arc4random_uniform(3);
    if (random == 0) {
        catch = YES;
    }
    else {
        catch = NO;
    }
    return catch;
}

@end
