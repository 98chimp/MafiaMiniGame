//
//  MafiaViewController.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MafiaViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *mafiosoQuestion;
@property (strong, nonatomic) IBOutlet UIButton *mafiosoKillLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *mafiosoResponse;

- (IBAction)mafiosoYesNoButton:(UISegmentedControl *)sender;
- (IBAction)mafiosoKillButton:(UIButton *)sender;
@end
