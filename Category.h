//
//  Caterory.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 01/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Category : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * feedUrl;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSNumber * entityId;
@property (nonatomic, retain) NSSet *torrents;
@end

@interface Category (CoreDataGeneratedAccessors)

- (void)addTorrentsObject:(NSManagedObject *)value;
- (void)removeTorrentsObject:(NSManagedObject *)value;
- (void)addTorrents:(NSSet *)values;
- (void)removeTorrents:(NSSet *)values;

@end
