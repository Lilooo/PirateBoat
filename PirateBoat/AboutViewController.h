//
//  AboutViewController.h
//  PirateBoat
//
//  Created by Alice Giordani on 29/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Twitter/Twitter.h>


@interface AboutViewController : UIViewController

<UIActionSheetDelegate, MFMailComposeViewControllerDelegate>

- (IBAction)share:(id)sender;

@end
