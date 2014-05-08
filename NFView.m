//
//  NFView.m
//  Bandstalk
//
//  Created by Ben Fox on 3/7/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "NFView.h"

CGFloat const kNFViewHeightFull = 568.0;
CGFloat const kNFViewHeightNavbar = 524.0;
CGFloat const kNFViewHeightNavbarStatusBar = 504.0;

CGFloat const kNFViewHeightNavbarOffset = 44.0;

@interface NFView ()

@property (nonatomic, strong) NSMutableDictionary *events;

@end

@implementation NFView

- (id)init
{
    if(!(self = [super init])) { return nil; }
    
    self.frame = CGRectMake(0.0, 0.0, [UIScreen mainScreen].applicationFrame.size.width, self.defaultHeight);
    
    self.events = [NSMutableDictionary dictionary];
    
    return self;
}

- (CGFloat)defaultHeight
{
    return kNFViewHeightNavbarStatusBar;
}

- (void)load
{
    
}

- (void)handleEvent:(NSString *)name withBlock:(ALActionBlock)block
{
    [self.events setObject:block forKey:name];
}

- (ALActionBlock)blockForEvent:(NSString *)name
{
    return [self.events objectForKey:name];
}

- (void)executeBlockForEvent:(NSString *)name sender:(id)sender
{
    ALActionBlock block = [self blockForEvent:name];
    
    block(sender);
}

- (void)switchSubview:(UIView *)view
{
    if([view isEqual:self.subviews.firstObject]) { return; }
    
    if(self.subviews.firstObject) {
        [self.subviews.firstObject removeFromSuperview];
    }
    
    view.frame = self.bounds;
    [self addSubview:view];
}

@end
