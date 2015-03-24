//
//  VillagerViewController.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SherrifViewController.h"

@interface VillagerViewController : UIViewController

@property (strong, nonatomic) SherrifViewController *sherrifViewController;
@property (strong, nonatomic) IBOutlet UILabel *villagerNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *customizedMessageLabel;
@property (strong, nonatomic) IBOutlet UIButton *villagerSubmitLabel;

- (IBAction)villagerSubmitButton:(UIButton *)sender;
- (NSString *)updateMessage;
- (NSString *)updateNumber;

@end
