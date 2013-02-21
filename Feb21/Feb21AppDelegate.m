//
//  Feb21AppDelegate.m
//  Feb21
//
//  Created by Christopher J Di Luccia on 2/19/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "Feb21AppDelegate.h"
#import "View.h" //This is for the view header file that will hold my output message on the iOS device screen

@implementation Feb21AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIScreen *screen = [UIScreen mainScreen]; /*pointer that holds the address of the one and only UIScreen object*/
	CGRect applicationFrame = screen.applicationFrame; /*create CGRect object and assign it the size of the UIScreen's Frame*/
	CGRect bounds = screen.bounds; /*create CGRect object and assign it the size of the UIScreen's bounds*/
    view = [[View alloc] initWithFrame: applicationFrame]; /*allocate and initialize the view*/
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window addSubview: view]; /*adding the view?*/
    [self.window makeKeyAndVisible];
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