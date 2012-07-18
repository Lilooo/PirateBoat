//
//  RSSReader.m
//  PirateBoat
//
//  Created by Nicolas Dufreche on 16/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import "RSSReader.h"

@interface RSSReader()


@end

@implementation RSSReader

@synthesize feedId         = _feedId;
@synthesize requestUrl     = _requestUrl;
@synthesize itemsToDisplay = _itemsToDisplay;

NSString *_url = @"feed://rss.thepiratebay.se/";

- (NSString *)getFeedURL
{
    if (!self.requestUrl) {
        self.requestUrl = [NSString stringWithFormat:@"%@%@", _url, self.feedId];
    }

    return self.requestUrl;
}

- (void)parseXMLFile
{
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    parsedItems = [[NSMutableArray alloc] init];
    itemsToDisplay = [NSArray array];
    
    feedParser = [[MWFeedParser alloc] initWithFeedURL:[NSURL URLWithString:self.getFeedURL]];
    feedParser.delegate = self;
    feedParser.feedParseType = ParseTypeItemsOnly;
    feedParser.connectionType = ConnectionTypeSynchronously;
    
    [feedParser parse];
}

- (void)refresh {
	[parsedItems removeAllObjects];
	[feedParser stopParsing];
	[feedParser parse];
}

- (void)feedParser:(MWFeedParser *)parser didParseFeedItem:(MWFeedItem *)item
{
    NSLog(@"title : %@", item.title);
    if (item) [parsedItems addObject:item];	
}

- (void)feedParserDidFinish:(MWFeedParser *)parser
{
	NSLog(@"Finished Parsing%@", (parser.stopped ? @" (Stopped)" : @""));
    [self updateParsedItems];
}

- (void)updateParsedItems {
	self.itemsToDisplay = [parsedItems sortedArrayUsingDescriptors:
						   [NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"date" 
																				 ascending:NO]]];
}

- (void)feedParser:(MWFeedParser *)parser didFailWithError:(NSError *)error {
	NSLog(@"Finished Parsing With Error: %@", error);
    if (parsedItems.count == 0) {
        NSLog(@"Failed"); // Show failed message in title
    } else {
        // Failed but some items parsed, so show and inform of error
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Parsing Incomplete"
                                                         message:@"There was an error during the parsing of this feed. Not all of the feed items could parsed."
                                                        delegate:nil
                                               cancelButtonTitle:@"Dismiss"
                                               otherButtonTitles:nil];
        [alert show];
    }
    [self updateParsedItems];
}

+ (NSDictionary *)getFeed
{
    NSDictionary* feed = [[NSDictionary alloc] init];
    
    return feed;
}

- (id)initWhitExampleUrl
{
    self = [super init];
    if (self) {
        self.requestUrl = @"feed:https://github.com/dious/PirateBoat/commits/master.atom";
    }
    return self;
}

- (id)initWhitMusicCategory
{
    self = [super init];
    if (self) {
        self.feedId = @"101";
    }
    return self;
}

- (id)initWhitFeedId:(NSString *)feedId
{
    self = [super init];
    if (self) {
        self.feedId = feedId;
    }
    return self;
}

@end
