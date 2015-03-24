//
//  VillagerViewController.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "VillagerViewController.h"

@interface VillagerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *villagerNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *customizedMessageLabel;
@property (strong, nonatomic) IBOutlet UIButton *villagerSubmitLabel;

- (IBAction)villagerSubmitButton:(UIButton *)sender;
- (NSString *)updateMessage;
- (NSString *)updateNumber;
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
    return self.customizedMessageLabel.text = self.presentationObject.customMessage;
}

- (NSString *)updateNumber
{
    return self.villagerNumberLabel.text = [NSString stringWithFormat:@"%d",self.presentationObject.numberToPresent];
}

@end
