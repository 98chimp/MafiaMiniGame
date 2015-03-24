//
//  SherrifViewController.h
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PresentationObject.h"
@class Sherrif;

@interface SherrifViewController : UIViewController

@property (strong, nonatomic) Sherrif *sherrif;
@property (strong, nonatomic) PresentationObject *sherrifVCObject;
@property (strong, nonatomic) IBOutlet UILabel *sherrifQuestion;
@property (strong, nonatomic) IBOutlet UISegmentedControl *sherrifResponse;
@property (strong, nonatomic) NSString *messageToPass;
@property (assign, nonatomic) NSInteger numberToPass;

- (IBAction)sherrifYesNoButton:(UISegmentedControl *)sender;
- (IBAction)sherrifCatchButton:(UIButton *)sender;

@end
