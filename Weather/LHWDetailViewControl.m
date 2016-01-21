//
//  LHWDetailControl.m
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LHWDetailViewControl.h"

@implementation LHWDetailViewControl

- (UIImage *)pictureLoader: (NSString *)weatherConditon {
    UIImage *weatherConditionPicture;
    if ([weatherConditon isEqualToString:@"Clear"]) {
        weatherConditionPicture = [UIImage imageNamed:@"clear-day.png"];
        
    }
    if ([weatherConditon isEqualToString:@"Cloudy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"cloudy.png"];
    }
    if ([weatherConditon isEqualToString:@"Fog"]) {
        weatherConditionPicture = [UIImage imageNamed:@"fog.png"];
    }
    if ([weatherConditon isEqualToString:@"Rain"]) {
        weatherConditionPicture = [UIImage imageNamed:@"rain.png"];
    }
    if ([weatherConditon isEqualToString:@"Sleet"]) {
        weatherConditionPicture = [UIImage imageNamed:@"sleet.png"];
    }
    if ([weatherConditon isEqualToString:@"Sunny"]) {
        weatherConditionPicture = [UIImage imageNamed:@"sunny.png"];
    }
    if ([weatherConditon isEqualToString:@"Windy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"wind"];
    }
    if ([weatherConditon isEqualToString:@"Partly-Cloudy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"partly-couldy.png"];
    }
    if ([weatherConditon isEqualToString:@"Snow"]){
        weatherConditionPicture = [UIImage imageNamed:@"snow.png"];
    }
    
    return weatherConditionPicture;
}

-(void)viewDidLoad {
    
    UILabel *cityDetails = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 300, 400)];
    cityDetails.text = [NSString stringWithFormat:@"City Name: %@\nTemperature: %d°\nCondition: %@", self.cityDetails.name, self.cityDetails.temperature, self.cityDetails.condition];
    cityDetails.numberOfLines = 3;
    
    
    UIImageView *condition = [[UIImageView alloc] initWithFrame:CGRectMake(50, 140, 50, 50)];
    condition.alpha = 0.75;
    
    
    condition.image = [self pictureLoader:self.cityDetails.condition];
    
    [self.view addSubview:cityDetails];
    [self.view addSubview:condition];
}

@end
