//
//  CLLocation+NF.m
//  Bandstalk
//
//  Created by Ben Fox on 4/10/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "CLLocation+NF.h"

#import <CoreLocation/CoreLocation.h>

@implementation CLLocation (NF)

- (BOOL)isEqualToLocation:(CLLocation *)location
{
    return ([self isEqual:location] || ([self distanceFromLocation:location] < 30.0));
}

- (void)placemarkWithBlock:(void (^)(CLPlacemark *placemark))block
{
    CLGeocoder *geocoder = [CLGeocoder new];
    [geocoder reverseGeocodeLocation:self completionHandler:^(NSArray *placemarks, NSError *error) {
        block(placemarks.firstObject);
    }];
}

@end
