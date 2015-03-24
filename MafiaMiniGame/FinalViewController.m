//
//  FinalViewController.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "FinalViewController.h"

@interface FinalViewController ()

@end

@implementation FinalViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateMessage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sherrifViewController = [[SherrifViewController alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)restartGameButton:(UIButton *)sender {
}

- (NSString *)updateMessage
{
    self.gameOverLabel.text = self.sherrifViewController.sherrifVCObject.customMessage;
    return self.gameOverLabel.text;
}

@end
