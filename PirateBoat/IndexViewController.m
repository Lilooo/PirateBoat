//
//  IndexViewController.m
//  PirateBoat
//
//  Created by Nicolas Dufreche on 10/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "IndexViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController
@synthesize title;
@synthesize pubDate;
@synthesize creator;
@synthesize guid;
@synthesize contentLength;
@synthesize link;

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
    self.title.text = self.torrent.name;
    self.pubDate.text = self.torrent.startDate;
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
    [self setTitle:nil];
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

@end
