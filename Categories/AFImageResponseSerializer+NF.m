//
//  AFImageResponseSerializer+NF.m
//  Bandstalk
//
//  Created by Ben Fox on 2/9/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "AFImageResponseSerializer+NF.h"

@implementation AFImageResponseSerializer (NF)

+ (instancetype)serializer
{
    AFImageResponseSerializer *serializer = [[self alloc] init];
    
    NSMutableSet *types = [serializer.acceptableContentTypes mutableCopy];
    [types addObject:@"image/jpg"];
    
    serializer.acceptableContentTypes = types;
    
    return serializer;
}

@end
