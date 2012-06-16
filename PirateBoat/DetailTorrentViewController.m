//
//  DetailTorrentViewController.m
//  PirateBoat
//
//  Created by Alice Giordani on 16/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "DetailTorrentViewController.h"

@interface DetailTorrentViewController ()

@end

@implementation DetailTorrentViewController
@synthesize pubDate;
@synthesize creator;
@synthesize title;
@synthesize contentLength;

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
    [self setPubDate:nil];
    [self setCreator:nil];
    [self setTitle:nil];
    [self setContentLength:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
