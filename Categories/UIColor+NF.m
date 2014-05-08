//
//  UIColor+NF.m
//  Dates
//
//  Created by Benjamin Fox on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIColor+NF.h"

@implementation UIColor (NF)

+ (UIColor *)colorWithRGB:(uint)rgb
{
    return [UIColor colorWithRed:((float)((rgb & 0xFF0000) >> 16))/255.0 green:((float)((rgb & 0xFF00) >> 8))/255.0 blue:((float)(rgb & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *)colorWithRGB:(uint)rgb andAlpha:(uint)alpha
{
    return [UIColor colorWithRed:((float)((rgb & 0xFF0000) >> 16))/255.0 green:((float)((rgb & 0xFF00) >> 8))/255.0 blue:((float)(rgb & 0xFF))/255.0 alpha:alpha];
}

- (UIColor *)lighterColor:(CGFloat)amount
{
    UIColor *c = self;
    
    CGFloat r, g, b, a;
    if ([c getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + amount, 1.0)
                               green:MIN(g + amount, 1.0)
                                blue:MIN(b + amount, 1.0)
                               alpha:a];
    return nil;
}

- (UIColor *)darkerColor:(CGFloat)amount
{
    UIColor *c = self;
    
    CGFloat r, g, b, a;
    if ([c getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MAX(r - amount, 0.0)
                               green:MAX(g - amount, 0.0)
                                blue:MAX(b - amount, 0.0)
                               alpha:a];
    return nil;
}

@end
