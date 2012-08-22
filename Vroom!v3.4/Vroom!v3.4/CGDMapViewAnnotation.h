//
//  CGDMapViewAnnotation.h
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/22/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CGDMapViewAnnotation : NSObject <MKAnnotation>
{
    NSString *title;
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, copy)NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d;


@end
