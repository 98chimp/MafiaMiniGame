//
//  VillagerViewController.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Villager.h"

@interface VillagerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *villagerNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *customizedMessageLabel;
@property (strong, nonatomic) IBOutlet UIButton *villagerSubmitLabel;
@property (strong, nonatomic) Villager *villager;

- (IBAction)villagerSubmitButton:(UIButton *)sender;

@end
