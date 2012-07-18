//
//  RSSReader.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 16/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWFeedParser.h"
#import "RSSItem.h"
#import "NSString+HTML.h"

@interface RSSReader : NSObject <MWFeedParserDelegate> {
    // Parsing
	MWFeedParser *feedParser;
	NSMutableArray *parsedItems;
	
	// Displaying
	NSArray *itemsToDisplay;
	NSDateFormatter *formatter;
}

@property (nonatomic, readwrite) NSString *feedId;
@property (nonatomic, readwrite) NSString *requestUrl;
@property (nonatomic, retain) NSArray *itemsToDisplay;

- (id)initWhitMusicCategory;
- (id)initWhitExampleUrl;
- (id)initWhitFeedId:(NSString *)feedId;
- (void)parseXMLFile;
- (NSString *)getFeedURL;
+ (NSDictionary *)getFeed;

@end
