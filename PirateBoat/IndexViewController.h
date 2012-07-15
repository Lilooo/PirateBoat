//
//  IndexViewController.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 10/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Torrent.h"

@interface IndexViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *pubDate;
@property (weak, nonatomic) IBOutlet UILabel *creator;
@property (weak, nonatomic) IBOutlet UIButton *guid;
@property (weak, nonatomic) IBOutlet UILabel *contentLength;
@property (weak, nonatomic) IBOutlet UIButton *link;
@property (strong, nonatomic) Torrent * torrent;

@end
