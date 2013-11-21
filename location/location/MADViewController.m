//
//  MADViewController.m
//  location
//
//  Created by Luke Schultz on 11/21/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "MADViewController.h"
#import "MADAnnotation.h"

@interface MADViewController ()

@end

@implementation MADViewController{
    CLLocationManager *locationManager;
    MADAnnotation *annotation;
   
}

- (void)viewDidLoad
{
    locationManager=[[CLLocationManager alloc] init];
	locationManager.delegate=self;
	locationManager.desiredAccuracy=kCLLocationAccuracyBest;
	locationManager.distanceFilter=kCLDistanceFilterNone;
	[locationManager startUpdatingLocation];
    _mapView.delegate=self;
	_mapView.mapType=MKMapTypeHybrid;
    [super viewDidLoad];

}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    _latitudeLabel.text=[[NSString alloc] initWithFormat:@"%f", manager.location.coordinate.latitude];
	_longitudeLabel.text=[[NSString alloc] initWithFormat:@"%f", manager.location.coordinate.longitude];
	_altitudeLabel.text=[[NSString alloc] initWithFormat:@"%f", manager.location.altitude];
	_accuracyLabel.text=[[NSString alloc] initWithFormat:@"%f", manager.location.horizontalAccuracy];
    MKCoordinateSpan span;
	span.latitudeDelta=.001; 
	span.longitudeDelta=.001;
	MKCoordinateRegion region;
	region.center=manager.location.coordinate; 
	region.span=span;
	[_mapView setRegion:region animated:YES];
if(annotation){
    [annotation moveAnnotation:manager.location.coordinate]; //moves the annotation if it already exists
}
else { 
    annotation=[[MADAnnotation alloc] initWithCoordinate:manager.location.coordinate]; 
    [_mapView addAnnotation:annotation];
}
}



-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSString *errorType;
    if (error.code == kCLErrorDenied) {
        errorType=@"Access Denied";
    } else errorType=@"Error";
	UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Error"
                                                  message:errorType
                                                 delegate:nil
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
	[alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
