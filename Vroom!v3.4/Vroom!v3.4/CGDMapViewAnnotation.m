//
//  CGDMapViewAnnotation.m
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/22/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import "CGDMapViewAnnotation.h"


@implementation CGDMapViewAnnotation

@synthesize title, coordinate;

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
	
	title = ttl;
	coordinate = c2d;
	return self;
}


@end
