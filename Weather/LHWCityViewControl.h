//
//  LHWCityViewControl.h
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LHWDetailViewControl.h"
#import "LHWCity.h"

@interface LHWCityViewControl : UIViewController
@property (nonatomic, strong) LHWCity *city;

-(instancetype) initWithCity: (LHWCity *)city;
+ (NSString *)randomConditionForCity: (LHWCity *)city;



@end
