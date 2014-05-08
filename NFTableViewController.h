//
//  NFTableViewController.h
//  Bandstalk
//
//  Created by Ben Fox on 1/14/14.
//  Copyright (c) 2014 Bandstalk. All rights reserved.
//

#import "NFViewController.h"

@interface NFTableViewController : NFViewController <UITableViewDelegate>

@property (nonatomic, strong) NSArray *tableData;

@end
