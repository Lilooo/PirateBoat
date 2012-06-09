//
//  Torrent.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 01/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Caterory;

@interface Torrent : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSString * picture;
@property (nonatomic, retain) NSString * comments;
@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) NSDate * endDate;
@property (nonatomic, retain) NSString * dcCreator;
@property (nonatomic, retain) NSString * magnet;
@property (nonatomic, retain) Caterory *releatedCategory;

@end
