//
//  ViewController.h
//  SwipeTest
//
//  Created by Meisha Ray on 6/19/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>
{
    UILabel *swipeLabel;
}
@property (nonatomic, retain)IBOutlet UILabel *swipeLabel;

-(void)viewWasSwiped;


@end
