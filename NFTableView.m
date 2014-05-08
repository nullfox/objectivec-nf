//
//  NFTableView.m
//  Bandstalk
//
//  Created by Ben Fox on 3/8/14.
//  Copyright (c) 2014 Annadel Interactive. All rights reserved.
//

#import "NFTableView.h"

@implementation NFTableView

- (id)init
{
    if(!(self = [super init])) { return nil; }
    
    UITableView *tableView = _tableView = [[UITableView alloc] initWithFrame:self.bounds];
    [self addSubview:tableView];
    
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.delegate = self.tableController;
    self.tableView.dataSource = self;
    
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableController.tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DefaultCell"];
    
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DefaultCell"];
    }
    
    return cell;
}

- (NFTableViewController *)tableController
{
    return (NFTableViewController *)self.controller;
}

@end
