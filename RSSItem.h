//
//  RSSItem.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 16/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWFeedItem.h"

@interface RSSItem : NSObject

@property (nonatomic, readwrite) NSString* name;
@property (nonatomic, readwrite) NSString* link;
@property (nonatomic, readwrite) NSString* dcCreator;
@property (nonatomic, readwrite) NSDate*   pubDate;
@property (nonatomic, readwrite) NSString* guid;
@property (nonatomic, readwrite) NSString* comments;
@property (nonatomic, readwrite) NSString* contentLength;
@property (nonatomic, readwrite) NSString* magnet;

- (id)initWithName:(NSString *)name andLink:(NSString *)link andDcCreator:(NSString *)dcCreator andPublicationDate:(NSDate *)pubDate andGuid:(NSString *)guid andComments:(NSString *)comments andContentLength:(NSString *)contentLength andMagnet:(NSString *)magnet;
+ (RSSItem *) convertFeedItemInTorrent:(MWFeedItem *) item;
+ (RSSItem *) torrentModel;

@end
