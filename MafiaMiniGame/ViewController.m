//
//  ViewController.m
//  MafiaMiniGame
//
//  Created by Shahin on 2015-03-23.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sherrifViewController = [[SherrifViewController alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

//- (void)updateVillerViewController
//{
//    self.villagerViewController.customizedMessageLabel.text = self.sherrifViewController.messageToPass;
//    self.villagerViewController.villagerNumberLabel.text = [NSString stringWithFormat:@"%ld", (long)self.sherrifViewController.numberToPass];
//}
//
//- (void)updateFinalViewController
//{
//    self.finalViewController.gameOverLabel.text = self.sherrifViewController.messageToPass;
//}

@end
