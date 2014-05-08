//
//  NFTableViewCell.m
//  Bandstalk
//
//  Created by Ben Fox on 4/10/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "NFTableViewCell.h"

@implementation NFTableViewCell

+ (CGFloat)rowHeight
{
    return 48.0;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) { return nil; }
    
    [self load];
    
    return self;
}

- (void)load
{
}

@end
