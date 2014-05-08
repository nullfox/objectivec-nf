//
//  CLLocation+NF.h
//  Bandstalk
//
//  Created by Ben Fox on 4/10/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface CLLocation (NF)

- (BOOL)isEqualToLocation:(CLLocation *)location;

- (void)placemarkWithBlock:(void (^)(CLPlacemark *placemark))block;

@end
