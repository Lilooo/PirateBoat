//
//  Torrent.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 01/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MWFeedItem.h"

@class Category;

@interface Torrent : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSDate * pubDate;
@property (nonatomic, retain) NSString * comments;
@property (nonatomic, retain) NSDate * endDate;
@property (nonatomic, retain) NSString * dcCreator;
@property (nonatomic, retain) NSString * magnet;
@property (nonatomic, retain) Category *releatedCategory;

+ (Torrent *) torrentModel;
+ (Torrent *) convertFeedItemInTorrent:(MWFeedItem *) item;
- (id) initWithName:(NSString *)name andPubDate:(NSDate *)pubDate;


@end
