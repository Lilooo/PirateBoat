//
//  Torrent.m
//  PirateBoat
//
//  Created by Nicolas Dufreche on 01/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "Torrent.h"
#import "Caterory.h"


@implementation Torrent

@synthesize name;
@synthesize url;
@synthesize picture;
@synthesize comments;
@synthesize startDate;
@synthesize endDate;
@synthesize dcCreator;
@synthesize magnet;
@synthesize releatedCategory;

- (NSData *)picture 
{
    if (!picture) picture = [NSData dataWithContentsOfURL:[NSURL URLWithString:self.url]];
    return picture;
}

+ (Torrent *) torrentModel
{
    Torrent * tmodel = [[Torrent alloc]init];
    
    tmodel.name = @"Amadou & Mariam - Folila";
    tmodel.url = @"http://www.amazon.com/Folila-Amadou-Mariam/dp/B0074V0K2Q/ref=sr_1_1?s=music&ie=UTF8&qid=1342440595&sr=1-1&keywords=Amadou";
   // tmodel.picture = @"http://3.bp.blogspot.com/-DU10hn--nXk/TrjjIMyTOBI/AAAAAAAADds/LFfh8ZuS2qc/s1600/the_matrix_-_poster_1__1999_.jpg";
    tmodel.comments = @"commentaire bidon";
    tmodel.startDate = [NSDate date];
    tmodel.endDate = [NSDate date];
    tmodel.dcCreator = @"rajabmm";
    tmodel.magnet = @"107.58 MiB (112807879 Bytes)";
    
    return tmodel;
}

@end
