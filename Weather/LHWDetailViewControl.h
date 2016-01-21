//
//  LHWDetailControl.h
//  Weather
//
//  Created by Li Pan on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LHWCity.h"

@interface LHWDetailViewControl : UIViewController
@property (nonatomic, strong) LHWCity *cityDetails;

- (UIImage *)pictureLoader: (NSString *)weatherConditon;

@end
