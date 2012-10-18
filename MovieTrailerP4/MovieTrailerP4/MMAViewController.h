//
//  MMAViewController.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomMovieCell.h"

@interface MMAViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *myTableView;
    NSMutableArray *movieList;
}

@end
