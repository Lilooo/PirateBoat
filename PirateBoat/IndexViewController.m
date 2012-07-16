//
//  IndexViewController.m
//  PirateBoat
//
//  Created by Nicolas Dufreche on 10/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "IndexViewController.h"
#import "ListViewController.h"
#import "AboutViewController.h"
#import "Torrent.h"

@interface IndexViewController ()

@end

@implementation IndexViewController
@synthesize name;
@synthesize pubDate;
@synthesize creator;
@synthesize guid;
@synthesize contentLength;
@synthesize link;
@synthesize torrent;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)update 
{
    self.name.text = self.torrent.name;
    self.pubDate.text = [NSDateFormatter localizedStringFromDate:self.torrent.startDate dateStyle:NSDateFormatterLongStyle timeStyle:NSDateFormatterNoStyle];
    self.creator.text = self.torrent.dcCreator;
    self.contentLength.text = self.torrent.magnet;
    //self.guid.?? = self.torrent.comments;
    //self.link.?? = self.torrent.url;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (!self.torrent) 
    {
        self.torrent = [Torrent torrentModel];
    }
    [self update];
}


- (void)viewDidUnload
{
    [self setName:nil];
    [self setPubDate:nil];
    [self setCreator:nil];
    [self setGuid:nil];
    [self setContentLength:nil];
    [self setLink:nil];
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
    UIActionSheet * shareSheet = [[UIActionSheet alloc]initWithTitle:@"Partagez ce torrent!" delegate:self cancelButtonTitle:@"Annuler" destructiveButtonTitle:nil otherButtonTitles:@"email",@"twitter", nil];
    
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
    [vc setSubject:self.torrent.name];    
    //declarer en delegate
    vc.mailComposeDelegate = self;
    
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
    [tw setInitialText:self.torrent.name];
    //[tw addImage:[UIImage imageWithData:self.torrent.picture]];
    
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

- (IBAction)info:(id)sender;
{
    
    AboutViewController * info = [[AboutViewController alloc]init];
    info.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:info animated:YES];
}


@end
