//
//  MMAViewController.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomMovieCell.h"
#import "MMAAppDelegate.h"
#import "DetailViewController.h"

@interface MMAViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *myTableView;
    NSArray *movieList;
    NSArray *thumbs;
    NSArray *showTimes;
}

@end
