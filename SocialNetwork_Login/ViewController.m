//
//  ViewController.m
//  SocialNetwork_Login
//
//  Created by Ramdhas on May,29.
//  Copyright (c) 2014 Ramdhas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Facebook:(id)sender
{
    FBShareDialogParams *p = [[FBShareDialogParams alloc] init];
    p.link = [NSURL URLWithString:@"http://developers.facebook.com/ios"];
#ifdef DEBUG
    [FBSettings enableBetaFeatures:FBBetaFeaturesShareDialog];
#endif
    
    if (!FBSession.activeSession.isOpen)
    {
        // if the session is closed, then we open it here, and establish a handler for state changes
        [FBSession openActiveSessionWithReadPermissions:nil
                                           allowLoginUI:YES
                                      completionHandler:^(FBSession *session,
                                                          FBSessionState state,
                                                          NSError *error)
         {
             if(error)
             {
                 //                     UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Unexpected error occured, Try again."
                 //                                                                         message:nil
                 //                                                                        delegate:nil
                 //                                                               cancelButtonTitle:@"OK"
                 //                                                               otherButtonTitles:nil];
                 //
                 //                     [alertView show];
             }
             else if (session.isOpen)
             {
            //     [self InviteAction:sender];
             }
         }];
        return;
    }
    
    

}

- (IBAction)Twitter:(id)sender {
}

- (IBAction)GooglePlus:(id)sender {
}
@end
