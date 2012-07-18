//
//  AppDelegate.h
//  PirateBoat
//
//  Created by Nicolas Dufreche on 01/06/12.
//  Copyright (c) 2012 Dev0rAlive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IndexViewController.h"
#import "RSSReader.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (strong, nonatomic) UITabBarController * tabBarController;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
//@property (readonly) UIViewController * rootViewController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
