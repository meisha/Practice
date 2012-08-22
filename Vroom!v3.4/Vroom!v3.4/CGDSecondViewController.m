//
//  CGDSecondViewController.m
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import "CGDSecondViewController.h"
#import "CGDFirstViewController.h"
#import "CGDThirdViewController.h"
#import "CGDFourthViewController.h"
#import "CGDTableViewController.h"

@interface CGDSecondViewController ()

@end

@implementation CGDSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MKMapView *mapView = (MKMapView*)self.view;
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = 49.2802;
    coordinate.longitude = 123.1182;
    mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
