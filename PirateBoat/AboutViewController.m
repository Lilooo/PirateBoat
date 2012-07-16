//
//  AboutViewController.m
//  PirateBoat
//
//  Created by Alice Giordani on 29/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)share:(id)sender;
{
    
    //instancier une UIACtionSheet
    UIActionSheet * shareSheet = [[UIActionSheet alloc]initWithTitle:@"Partagez cette application!" delegate:self cancelButtonTitle:@"Annuler" destructiveButtonTitle:nil otherButtonTitles:@"email",@"twitter", nil];
    
    //Presenter une ActionSheet
    [shareSheet showInView:self.view];
}

-(void)shareByEmail
{
    //voir si possibilité d'envoyer un email
    //if(![MFMailComposeViewController canSendMail]) return;
    
    //Instance de MFmail...Controller
    MFMailComposeViewController * vc = [[MFMailComposeViewController alloc]init];
    
    //set subject, messageBody...
    [vc setSubject:@"Montes à bord du PirateBoat"];
    //[vc setMessageBody:@"Tu connais PirateBay?Tu veux en profiter depuis ton Iphone?Télécharges cette super App!"]
    //presenter la vue modal MFMail...ViewController
    [self presentModalViewController:vc animated:YES];
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissModalViewControllerAnimated:true];
}

-(void)shareByTwitter
{
    
    //Instance de MFmail...Controller
    TWTweetComposeViewController * tw = [[TWTweetComposeViewController alloc]init];
    
    //set Initial Text
    [tw setInitialText:@"Montez à bord du PirateBoat- http://www.url.com"];
    
    //presenter la vue modal MFMail...ViewController
    [self presentModalViewController:tw animated:YES];
    
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == actionSheet.cancelButtonIndex) return;
    
    switch (buttonIndex) {
        case 0:
            //Email
            [self shareByEmail];
            break;
            
        case 1:
            //Twitter
            [self shareByTwitter];
            break;
            
        default:
            break;
    }
}

@end
