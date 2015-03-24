//
//  FinalViewController.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinalViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *gameOverLabel;
@property (strong, nonatomic) IBOutlet UIButton *restartGameLabel;
- (IBAction)restartGameButton:(UIButton *)sender;

@end
