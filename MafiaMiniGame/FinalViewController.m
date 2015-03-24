//
//  FinalViewController.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "FinalViewController.h"

@interface FinalViewController ()
@property (strong, nonatomic) IBOutlet UILabel *gameOverLabel;
@property (strong, nonatomic) IBOutlet UIButton *restartGameLabel;

- (IBAction)restartGameButton:(UIButton *)sender;
- (NSString *)updateMessage;

@end

@implementation FinalViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateMessage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)restartGameButton:(UIButton *)sender {
}

- (NSString *)updateMessage
{
    return self.gameOverLabel.text = self.presentationObject.customMessage;
}

@end
