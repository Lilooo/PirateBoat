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

@dynamic name;
@dynamic url;
@dynamic picture;
@dynamic comments;
@dynamic startDate;
@dynamic endDate;
@dynamic dcCreator;
@dynamic magnet;
@dynamic releatedCategory;


/*- (NSData *)imageData 
{
    if (!_imageData) _imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:self.posterURL]];
    return _imageData;
}*/

+ (Torrent *) torrentModel
{
    Torrent * tmodel = [[Torrent alloc]init];
    
    tmodel.name = @"TOTO";
    tmodel.url = @"ZERO";
    tmodel.picture = @"http://3.bp.blogspot.com/-DU10hn--nXk/TrjjIMyTOBI/AAAAAAAADds/LFfh8ZuS2qc/s1600/the_matrix_-_poster_1__1999_.jpg";
    tmodel.comments = @"commentaire bidon";
    tmodel.startDate = @"1999";
    tmodel.endDate = @"2010";
    tmodel.dcCreator = @"plop";
    tmodel.magnet = @"magnetckoi";
    
    return tmodel;
}

@end
