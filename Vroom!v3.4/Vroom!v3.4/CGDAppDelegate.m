//
//  CGDAppDelegate.m
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import "CGDAppDelegate.h"
#import "CGDFirstViewController.h"
#import "CGDSecondViewController.h"
#import "CGDThirdViewController.h"
#import "CGDFourthViewController.h"
#import "CGDTableViewController.h"

@implementation CGDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    UIViewController *viewController1 = [[CGDFirstViewController alloc] initWithNibName:@"CGDFirstViewController" bundle:nil];
//    UIViewController *viewController2 = [[CGDSecondViewController alloc] initWithNibName:@"CGDTableViewController" bundle:nil];
//    UIViewController *viewController3 = [[CGDThirdViewController alloc] initWithNibName:@"CGDThirdController" bundle:nil];
//   
//    self.tabBarController = [[UITabBarController alloc] init];
//    //::::tab bar color::::
//    self.tabBarController.tabBar.tintColor=[UIColor colorWithRed:0.6 green:0.2 blue:0.2 alpha:1];
//    self.tabBarController.viewControllers = @[viewController1, viewController2, viewController3];
//    self.window.rootViewController = self.tabBarController;
//    [self.window makeKeyAndVisible];
return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
