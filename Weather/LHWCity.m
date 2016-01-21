//
//  LHWCity.m
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWCity.h"


@implementation LHWCity

-(instancetype)initWithCityName: (NSString *)name cityTemperature:(int)temperature {
    self = [super init];
    if (self) {
        _name = name;
        _temperature = temperature;
    
    }
    return self;
}

@end
