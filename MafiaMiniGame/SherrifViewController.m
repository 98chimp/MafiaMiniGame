//
//  SherrifViewController.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "SherrifViewController.h"
#import "Sherrif.h"

@interface SherrifViewController ()

@end

@implementation SherrifViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self presentQuestion];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _sherrif = self.sherrif;
    _finalViewController = self.finalViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

- (IBAction)sherrifYesNoButton:(UISegmentedControl *)sender
{
    [self.sherrif evaluateAnswer:self.sherrifResponse.selectedSegmentIndex];
}

- (IBAction)sherrifCatchButton:(UIButton *)sender
{
    switch (self.sherrif.pass) {
        case 1:
            [self performSegueWithIdentifier:@"sherrifWins" sender:self];
            self.finalViewController.gameOverLabel.text = self.sherrif.presentationObject.customMessage;
            break;
        case 2:
            [self performSegueWithIdentifier:@"sherrifTries" sender:self];
            self.villagerViewController.customizedMessageLabel.text = self.sherrif.presentationObject.customMessage;
            self.villagerViewController.villagerNumberLabel.text = [NSString stringWithFormat:@"%d", self.sherrif.presentationObject.numberToPresent];
        case 3:
            [self performSegueWithIdentifier:@"sherrifTries" sender:self];
            self.villagerViewController.customizedMessageLabel.text = self.sherrif.presentationObject.customMessage;
            self.villagerViewController.villagerNumberLabel.text = [NSString stringWithFormat:@"%d", self.sherrif.presentationObject.numberToPresent];
        case 4:
            [self performSegueWithIdentifier:@"sherrifWins" sender:self];
            self.villagerViewController.customizedMessageLabel.text = self.sherrif.presentationObject.customMessage;
            self.villagerViewController.villagerNumberLabel.text = [NSString stringWithFormat:@"%d", self.sherrif.presentationObject.numberToPresent];
        default:
            break;
    }
}

- (void)presentQuestion
{
    self.sherrifQuestion.text = self.sherrif.randomQuestion;
}

@end
