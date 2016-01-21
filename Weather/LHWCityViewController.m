//
//  LHWCities.m
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"

@implementation LHWCityViewController

-(instancetype) initWithCity: (LHWCity *)city {
    self = [super init];
    if (self) {
        _city = city;
        
    }
    return self;
}



@end
