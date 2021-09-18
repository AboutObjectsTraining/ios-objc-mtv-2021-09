// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "AppDelegate.h"
#import "RELEditBookController.h"
#import "RELAddBookController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    [self configureAppearance];
}

- (void)configureAppearance {
    UINavigationBar *navBarAppearanceProxy = UINavigationBar.appearance;
    navBarAppearanceProxy.titleTextAttributes = @{ NSForegroundColorAttributeName : UIColor.systemGray2Color };
    navBarAppearanceProxy.largeTitleTextAttributes = @{ NSForegroundColorAttributeName : UIColor.systemGrayColor };
    
    UITableViewCell *cellAppearanceProxy = [UITableViewCell appearanceWhenContainedInInstancesOfClasses:
                                            @[RELEditBookController.class,
                                              RELAddBookController.class]];
    cellAppearanceProxy.backgroundColor = UIColor.lightGrayColor;
}

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}

@end
