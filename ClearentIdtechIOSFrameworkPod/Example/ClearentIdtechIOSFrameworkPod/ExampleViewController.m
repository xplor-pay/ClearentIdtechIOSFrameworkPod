//
//  ExampleViewController.m
//  ClearentIdtechIOSFrameworkPod
//
//  Created by davidHigginbotham on 03/15/2019.
//  Copyright (c) 2019 davidHigginbotham. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

//CLEARENT: This is the object you will interact with.
Clearent_VP3300 *clearentVP3300;

//CLEARENT: This object will be used to create transaction tokens for manually entered cards.
ClearentManualEntry *clearentManualEntry;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //init object
#ifndef __i386__
    //CLEARENT: Initialize the clearentVP3300 object with your public delegate, the Clearent Base Url, and the public key Clearent provided. In this example, the ViewController is your delegate (Clearent_Public_IDTech_VP3300_Delegate).
    clearentVP3300 = [[Clearent_VP3300 alloc]  init];
    [clearentVP3300 init:self clearentBaseUrl:@"https://gateway-sb.clearent.net" publicKey:@"307a301406072a8648ce3d020106092b240303020801010c036200042b0cfb3a1faaca8fb779081717a0bafb03e0cb061a1ef297f75dc5b951aaf163b0c2021e9bb73071bf89c711070e96ab1b63c674be13041d9eb68a456eb6ae63a97a9345c120cd8bff1d5998b2ebbafc198c5c5b26c687bfbeb68b312feb43bf"];
    NSLog(@"clearentVP3300 has been initialized");
    
    //Clear the configuration cache to force the framework to reconfigure the reader every time it connects.
    [clearentVP3300 clearConfigurationCache];
    
    clearentManualEntry = [[ClearentManualEntry alloc]  init];
    [clearentManualEntry init:self clearentBaseUrl:@"https://gateway-sb.clearent.net" publicKey:@"307a301406072a8648ce3d020106092b240303020801010c036200042b0cfb3a1faaca8fb779081717a0bafb03e0cb061a1ef297f75dc5b951aaf163b0c2021e9bb73071bf89c711070e96ab1b63c674be13041d9eb68a456eb6ae63a97a9345c120cd8bff1d5998b2ebbafc198c5c5b26c687bfbeb68b312feb43bf"];
    
    NSLog(@"clearentManualEntry has been initialized");
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)isReady {
    NSLog(@"isReady");
}

- (void)handleManualEntryError:(NSString *)message {
    NSLog(@"handleManualEntryError");
}

- (void)successfulTransactionToken:(NSString *)jsonString {
    NSLog(@"successfulTransactionToken");
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    NSLog(@"encodeWithCoder");
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    NSLog(@"traitCollectionDidChange");
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog(@"preferredContentSizeDidChangeForChildContentContainer");
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    NSLog(@"sizeForChildContentContainer");
    return CGSizeZero;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog(@"systemLayoutFittingSizeDidChangeForChildContentContainer");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"viewWillTransitionToSize");
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"willTransitionToTraitCollection");
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    NSLog(@"didUpdateFocusInContext");
}

- (void)setNeedsFocusUpdate {
    NSLog(@"setNeedsFocusUpdate");
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    NSLog(@"shouldUpdateFocusInContext");
    return true;
}

- (void)updateFocusIfNeeded {
    NSLog(@"updateFocusIfNeeded");
}

@end
