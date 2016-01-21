//
//  LHWCity.h
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LHWCity : NSObject
//@property (nonatomic, assign) NSInteger chanceOfRain;
@property (nonatomic, assign) int temperature;
@property (assign, nonatomic) int temperatureCoefficient;
@property (nonatomic, strong) NSString *condition;
@property (nonatomic, strong) NSString *name;

//@property (nonatomic, strong) LHWCityViewControl *cityVC;

-(instancetype)initWithCityName: (NSString *)name cityTemperature:(int)temperature;;


@end
