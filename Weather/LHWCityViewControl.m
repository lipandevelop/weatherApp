//
//  LHWCityViewControl.m
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewControl.h"

@implementation LHWCityViewControl

+ (NSString *)randomConditionForCity: (LHWCity *)city {
    int r = arc4random_uniform(8);
    if (r == 0) {
        return @"Clear";
    }
    if (r == 1) {
        return @"Cloudy";
    }
    if (r == 2) {
        return @"Fog";
    }
    if (r == 3) {
        return @"Partly-Cloudy";
    }
    if (r == 4) {
        return @"Rain";
    }
    if (r == 5) {
        return @"Sleet";
    }
    if (r == 6) {
        return @"Sunny";
    }
    if (r == 7) {
        return @"Windy";
    }
    if ((city.temperature < 5)) {
        if (r == 8) {
            return @"Snow";
        }
    }
    return @"Default";
}


-(instancetype) initWithCity: (LHWCity *)city {
    self = [super init];
    if (self) {
        _city = city;
        
    }
    return self;
}

- (void) showWeatherDetails {
    
    LHWDetailViewControl *cityDetilsViewController = [[LHWDetailViewControl alloc] init];
    cityDetilsViewController.cityDetails = self.city;
    cityDetilsViewController.view.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:150.0/255.0 blue:125.0/225.0 alpha:1];
    
    [self.navigationController pushViewController:cityDetilsViewController animated:YES];
    
}

-(void)viewDidLoad {
    
    
    UILabel *cityTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.view addSubview:cityTitle];
    cityTitle.textAlignment = UITextAlignmentCenter;
    
    cityTitle.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:cityTitle attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    
    
    
    cityTitle.text = self.city.name;
    cityTitle.textColor = [UIColor whiteColor];
    
    
    
    UIBarButtonItem *detailsButton = [[UIBarButtonItem alloc] initWithTitle:@"Details" style:UIBarButtonItemStyleDone target:self action:@selector(showWeatherDetails)];
    self.navigationItem.rightBarButtonItem = detailsButton;
    detailsButton.tintColor = [UIColor colorWithRed:1 green:0.95 blue:1 alpha:1];
    
}

- (void) viewWillAppear:(BOOL)animated {

    
}

@end
