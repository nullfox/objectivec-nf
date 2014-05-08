//
//  UIColor+NF.h
//  Dates
//
//  Created by Benjamin Fox on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (NF)

+ (UIColor *)colorWithRGB:(uint)rgb;
+ (UIColor *)colorWithRGB:(uint)rgb andAlpha:(uint)alpha;

- (UIColor *)lighterColor:(CGFloat)amount;
- (UIColor *)darkerColor:(CGFloat)amount;

@end
