//
//  CGDTableViewController.h
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGDTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *listData;
    IBOutlet UILabel *eventName;
    IBOutlet UILabel *eventPlace;
    IBOutlet UITableView *myTableView;
    
}
@property (strong, nonatomic) NSArray *listData;



@end
