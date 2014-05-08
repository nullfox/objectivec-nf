//
//  NFTableView.h
//  Bandstalk
//
//  Created by Ben Fox on 3/8/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "NFView.h"
#import "NFTableViewController.h"

@interface NFTableView : NFView <UITableViewDataSource>

@property (nonatomic, weak) NFTableViewController *tableController;

@property (nonatomic, readonly) UITableView *tableView;

@end
