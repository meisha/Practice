//
//  CGDSecondViewController.h
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CGDSecondViewController : UIViewController 
{
    IBOutlet UILabel *eventTitle;
    IBOutlet UITextView *eventDetails;
    MKMapView *mapView;
    
}
@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@end
