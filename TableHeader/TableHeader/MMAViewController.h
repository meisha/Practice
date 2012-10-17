//
//  MMAViewController.h
//  TableHeader
//
//  Created by S. Meisha Ray on 10/11/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMAViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *myTableView;
}

@end
