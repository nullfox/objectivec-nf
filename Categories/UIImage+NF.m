//
//  UIImage+NF.m
//  Bandstalk
//
//  Created by Ben Fox on 4/27/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "UIImage+NF.h"

@implementation UIImage (NF)

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [color setFill];
    
    CGContextFillRect(context, CGRectMake(0.0, 0.0, size.width, size.height));
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
