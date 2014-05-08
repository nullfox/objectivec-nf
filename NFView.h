//
//  NFView.h
//  Bandstalk
//
//  Created by Ben Fox on 3/7/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <UIControl+ALActionBlocks.h>

extern CGFloat const kNFViewHeightFull;
extern CGFloat const kNFViewHeightNavbar;
extern CGFloat const kNFViewHeightNavbarStatusBar;

extern CGFloat const kNFViewHeightNavbarOffset;

@interface NFView : UIView

@property (nonatomic, weak) UIViewController *controller;

@property (nonatomic, readonly) CGFloat defaultHeight;

- (void)load;

- (void)handleEvent:(NSString *)name withBlock:(ALActionBlock)block;
- (ALActionBlock)blockForEvent:(NSString *)name;
- (void)executeBlockForEvent:(NSString *)name sender:(id)sender;

- (void)switchSubview:(UIView *)view;

@end
