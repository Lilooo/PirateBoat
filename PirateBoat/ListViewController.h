//
//  ListViewController.h
//  PirateBoat
//
//  Created by Alice Giordani on 19/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+HTML.h"
#import "MWFeedParser.h"
#import "IndexViewController.h"
#import "RSSItem.h"

@interface ListViewController : UITableViewController
<MWFeedParserDelegate>
{
    
	// Parsing
	MWFeedParser *feedParser;
	NSMutableArray *parsedItems;
    
	// Displaying
	NSArray *itemsToDisplay;
	NSDateFormatter *formatter;
    
}

@property (nonatomic, retain) NSArray *itemsToDisplay;



@end
