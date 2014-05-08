//
//  UIView+NF.m
//  Bandstalk
//
//  Created by Ben Fox on 4/1/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "UIView+NF.h"

@implementation UIView (NF)

- (CGFloat)frameOriginBottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setFrameOriginBottom:(CGFloat)frameOriginBottom
{
    CGRect rect = self.frame;
    
    rect.origin.y = frameOriginBottom - rect.size.height;
    
    self.frame = rect;
}

- (CGFloat)frameOriginRight
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setFrameOriginRight:(CGFloat)frameOriginRight
{
    CGRect rect = self.frame;
    
    rect.origin.x = frameOriginRight - rect.size.width;
    
    self.frame = rect;
}

@end
