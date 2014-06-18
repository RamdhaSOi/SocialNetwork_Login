//
//  ViewController.h
//  SocialNetwork_Login
//
//  Created by Ramdhas on May,29.
//  Copyright (c) 2014 Ramdhas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface ViewController : UIViewController<FBLoginViewDelegate>

- (IBAction)Facebook:(id)sender;
- (IBAction)Twitter:(id)sender;
- (IBAction)GooglePlus:(id)sender;

@end
