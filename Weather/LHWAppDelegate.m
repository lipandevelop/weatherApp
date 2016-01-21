//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "LHWCity.h"
#import "LHWCityViewControl.h"


@implementation LHWAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    
#pragma mark - vancouver

    
    LHWCity *vancouver = [[LHWCity alloc] initWithCityName:@"Vancouver" cityTemperature:arc4random_uniform(25)+15];
    vancouver.condition = [LHWCityViewControl randomConditionForCity:vancouver];
    
    LHWCityViewControl *vancouverVC = [[LHWCityViewControl alloc] initWithCity: vancouver];
    
    UINavigationController *vancouverNav = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    vancouverNav.title = @"Vancouver";
    vancouverVC.title = @"Vancouver";
    vancouverVC.view.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:100.0/255.0 blue:200.0/255.0 alpha:1];
    
#pragma mark - newyork
    
    LHWCity *newyork = [[LHWCity alloc] initWithCityName:@"New York" cityTemperature:arc4random_uniform(30)-20];
    
    LHWCityViewControl *newyorkVC = [[LHWCityViewControl alloc] initWithCity: newyork];
    newyork.condition = [LHWCityViewControl randomConditionForCity:newyork];
    
    UINavigationController *newyorkNav = [[UINavigationController alloc] initWithRootViewController: newyorkVC];
    newyorkNav.title = @"New York";
    newyorkVC.title = @"New York";
    newyorkVC.view.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:125.0/255.0 blue:175.0/255.0 alpha:1];
    
    
#pragma mark - brussels
    
    LHWCity *brussels = [[LHWCity alloc] initWithCityName:@"Brussels" cityTemperature:arc4random_uniform(25)-5];
    
    LHWCityViewControl *brusselsVC = [[LHWCityViewControl alloc] initWithCity: brussels];
    brussels.condition = [LHWCityViewControl randomConditionForCity:brussels];
    
    UINavigationController *brusselsNav = [[UINavigationController alloc] initWithRootViewController: brusselsVC];
    brusselsNav.title = @"Brussels";
    brusselsVC.title = @"Brussels";
    brusselsVC.view.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:150.0/255.0 blue:150.0/255.0 alpha:1];
    
#pragma mark - rio
    
    LHWCity *rio = [[LHWCity alloc] initWithCityName:@"Rio" cityTemperature:arc4random_uniform(15)+25];
    
    LHWCityViewControl *rioVC = [[LHWCityViewControl alloc] initWithCity: rio];
    rio.condition = [LHWCityViewControl randomConditionForCity:rio];
    
    UINavigationController *rioNav = [[UINavigationController alloc] initWithRootViewController: rioVC];
    rioNav.title = @"Rio";
    rioVC.title = @"Rio";
    rioVC.view.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:175.0/255.0 blue:125.0/225.0 alpha:1];
    
#pragma mark -shanghai
    
    LHWCity *shanghai = [[LHWCity alloc] initWithCityName:@"Shanghai" cityTemperature:arc4random_uniform(18)+11];
    
    LHWCityViewControl *shanghaiVC = [[LHWCityViewControl alloc] initWithCity: shanghai];
    shanghai.condition = [LHWCityViewControl randomConditionForCity:shanghai];
    
    UINavigationController *shanghaiNav = [[UINavigationController alloc] initWithRootViewController: shanghaiVC];
    shanghaiNav.title = @"Shanghai";
    shanghaiVC.title = @"Shanghai";
    shanghaiVC.view.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:200.0/255.0 blue:100.0/255.0 alpha:1];
    
    
#pragma mark -tabBarControllerArray
    
    NSArray *controllers = [[NSArray alloc] initWithObjects:vancouverNav, newyorkNav, brusselsNav, rioNav, shanghaiNav, nil];
    
    
    self.window.rootViewController = tabBarController;
    tabBarController.viewControllers = controllers;
    

    

    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
