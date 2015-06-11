//
//  ViewController.h
//  ch20_1
//
//  Created by 傅昱軒 on 2015/5/28.
//  Copyright (c) 2015年 ite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface ViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>
{
    CLLocationManager *location;
}

@property (weak, nonatomic) IBOutlet MKMapView *myMap;

@end

