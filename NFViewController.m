//
//  NFViewController.m
//  Bandstalk
//
//  Created by Ben Fox on 1/14/14.
//  Copyright (c) 2014 Bandstalk. All rights reserved.
//

#import "NFViewController.h"

#import "NFView.h"

CGFloat const kNFViewControllerNavigationIconSize = 18.0;

@interface NFViewController ()

@end

@implementation NFViewController

- (id)init
{
    if(!(self = [super init])) { return nil; }
    
    [self didInstanciate];
    
    return self;
}

- (void)loadView
{
    NSString *className = NSStringFromClass([self class]);
    
    NSString *viewName = [NSString stringWithFormat:@"%@View", className];
    
    NFView *view = [[NSClassFromString(viewName) alloc] init];
    view.controller = self;
    [view load];
    
    [self setView:view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [self leftNavigationItemButton];
    self.navigationItem.rightBarButtonItem = [self rightNavigationItemButton];
    
    [self didLoadView];
}

- (UIBarButtonItem *)leftNavigationItemButton
{
    return nil;
}

- (UIBarButtonItem *)rightNavigationItemButton
{
    return nil;
}

- (void)didInstanciate
{
}

- (void)didLoadView
{
}

- (void)switchSubviewController:(NSInteger)index
{
    UIViewController *nextController = [self.childViewControllers objectAtIndex:index];
    
    if([nextController isEqual:self.currentSubviewController]) { return; }
    
    self.currentSubviewController = nextController;
    
    [(NFView *)self.view switchSubview:nextController.view];
    
    [self didSwitchToSubviewController:nextController];
}

- (void)didSwitchToSubviewController:(UIViewController *)controller
{
}

@end
