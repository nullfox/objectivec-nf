//
//  NFViewController.h
//  Bandstalk
//
//  Created by Ben Fox on 1/14/14.
//  Copyright (c) 2014 Bandstalk. All rights reserved.
//

#import <UIKit/UIKit.h>

extern CGFloat const kNFViewControllerNavigationIconSize;

@interface NFViewController : UIViewController

@property (nonatomic, strong) UIViewController *currentSubviewController;

- (UIBarButtonItem *)leftNavigationItemButton;
- (UIBarButtonItem *)rightNavigationItemButton;

- (void)didInstanciate;
- (void)didLoadView;

- (void)switchSubviewController:(NSInteger)index;
- (void)didSwitchToSubviewController:(UIViewController *)controller;

@end
