//
//  DetailTorrentViewController.h
//  PirateBoat
//
//  Created by Alice Giordani on 16/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTorrentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *pubDate;
@property (weak, nonatomic) IBOutlet UILabel *creator;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *contentLength;

@end
