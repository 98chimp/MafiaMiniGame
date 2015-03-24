//
//  SherrifViewController.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VillagerViewController.h"
#import "FinalViewController.h"
@class Sherrif;

@interface SherrifViewController : UIViewController

@property (strong, nonatomic) Sherrif *sherrif;
@property (strong, nonatomic) VillagerViewController *villagerViewController;
@property (strong, nonatomic) FinalViewController *finalViewController;
@property (strong, nonatomic) IBOutlet UILabel *sherrifQuestion;
@property (strong, nonatomic) IBOutlet UISegmentedControl *sherrifResponse;

- (IBAction)sherrifYesNoButton:(UISegmentedControl *)sender;
- (IBAction)sherrifCatchButton:(UIButton *)sender;

@end
