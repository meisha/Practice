//
//  CGDEventTableViewController.h
//  Vroom!v1.0
//
//  Created by S. Meisha Ray on 8/22/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGDEventTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *listData;

@end
