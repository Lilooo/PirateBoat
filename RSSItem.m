//
//  RSSItem.m
//  PirateBoat
//
//  Created by Nicolas Dufreche on 16/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "RSSItem.h"

@implementation RSSItem

@synthesize name         = _name;
@synthesize link          = _link;
@synthesize comments      = _comments;
@synthesize pubDate       = _pubDate;
@synthesize dcCreator     = _dcCreator;
@synthesize guid          = _guid;
@synthesize contentLength = _contentLength;
@synthesize magnet = _magnet;


- (id)initWithName:(NSString *)name andLink:(NSString *)link andDcCreator:(NSString *)dcCreator andPublicationDate:(NSDate *)pubDate andGuid:(NSString *)guid andComments:(NSString *)comments andContentLength:(NSString *)contentLength andMagnet:(NSString *)magnet
{
    self = [super init];
    if (self) {
        self.name = name;
        self.link = link;
        self.dcCreator = dcCreator;
        self.pubDate = pubDate;
        self.guid = guid;
        self.comments = comments;
        self.contentLength = contentLength;
        self.magnet = magnet;
    }
    return self;
}

+ (RSSItem *) convertFeedItemInTorrent:(MWFeedItem *)item
{
    RSSItem * torrent = [[RSSItem alloc]initWithName:item.title andLink:item.link andDcCreator:item.summary andPublicationDate:item.date andGuid:item.content andComments:item.identifier andContentLength:@""andMagnet:item.link];
    
    return torrent;
}

+ (RSSItem *) torrentModel
{
    RSSItem * tmodel = [[RSSItem alloc]init];
    
    tmodel.name = @"Amadou & Mariam - Folila";
    //tmodel.url = @"http://www.amazon.com/Folila-Amadou-Mariam/dp/B0074V0K2Q/ref=sr_1_1?s=music&ie=UTF8&qid=1342440595&sr=1-1&keywords=Amadou";
    // tmodel.picture = @"http://3.bp.blogspot.com/-DU10hn--nXk/TrjjIMyTOBI/AAAAAAAADds/LFfh8ZuS2qc/s1600/the_matrix_-_poster_1__1999_.jpg";
    tmodel.comments = @"commentaire bidon";
    tmodel.pubDate = [NSDate date];
    //tmodel.endDate = [NSDate date];
    tmodel.dcCreator = @"rajabmm";
    tmodel.magnet = @"107.58 MiB (112807879 Bytes)";
    
    return tmodel;
}


@end
