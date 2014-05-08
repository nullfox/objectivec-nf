//
//  UILabel+NF.m
//  Bandstalk
//
//  Created by Ben Fox on 2/4/14.
//  Copyright (c) 2014 Bandstalk. All rights reserved.
//

#import "UILabel+NF.h"

#import "UIFont+NF.h"

#import <JRSwizzle.h>

@implementation UILabel (NF)

+ (void)load
{
    [UILabel jr_swizzleMethod:@selector(setFont:) withMethod:@selector(setCustomFont:) error:nil];
    [UILabel jr_swizzleMethod:@selector(init) withMethod:@selector(initCustom) error:nil];
    [UILabel jr_swizzleMethod:@selector(initWithFrame:) withMethod:@selector(initCustomWithFrame:) error:nil];
}

- (id)initCustom
{
    self = [self initCustom];
    if(self) {
        self.font = [UIFont applicationFontWithSize:self.font.pointSize];
    }
    return self;
}

- (id)initCustomWithFrame:(CGRect)frame
{
    self = [self initCustomWithFrame:frame];
    if(self) {
        self.font = [UIFont applicationFontWithSize:self.font.pointSize];
    }
    return self;
}

- (void)setCustomFont:(UIFont *)font
{
    if([font.fontName rangeOfString:[UIFont applicationFontWithSize:0.0].fontName].location == 0) {
        return [self setCustomFont:font];
    } else {
        return [self setCustomFont:[UIFont applicationFontWithSize:font.pointSize]];
    }
}

@end
