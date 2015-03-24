//
//  VillagerViewController.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "VillagerViewController.h"

@interface VillagerViewController ()

@end

@implementation VillagerViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateMessage];
    [self updateNumber];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sherrifViewController = [[SherrifViewController alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (IBAction)villagerSubmitButton:(UIButton *)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (NSString *)updateMessage
{
    self.customizedMessageLabel.text = self.sherrifViewController.sherrifVCObject.customMessage;
    return self.customizedMessageLabel.text;
}

- (NSString *)updateNumber
{
    self.villagerNumberLabel.text = [NSString stringWithFormat:@"%d", self.sherrifViewController.sherrifVCObject.numberToPresent];
    return self.villagerNumberLabel.text;
}

@end
