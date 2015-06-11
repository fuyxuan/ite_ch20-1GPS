//
//  ViewController.m
//  ch20_1
//
//  Created by 傅昱軒 on 2015/5/28.
//  Copyright (c) 2015年 ite. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    location = [[CLLocationManager alloc] init];
//    //詢問是否要給APP定位功能權限
//    if ([location respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
//        [location requestWhenInUseAuthorization];
//    }
//    
//    //開啟坐標更新
//    [location startUpdatingLocation];
    
    
    
//    MKPointAnnotation *point;
//    //設定在台北的大頭針
//    point=[[MKPointAnnotation alloc] init];
//    point.coordinate=CLLocationCoordinate2DMake(25.0335, 121.5651);
//    point.title=@"TaipeiCity";
//    point.subtitle=@"ＲＯＣ capital city";
//    [self.mMap addAnnotation:point];
    
    
    
    
    
    self.myMap.delegate = self;
    MyAnnotation *annotation;
    
    
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(25.0335, 121.5651)];
    annotation.image = [UIImage imageNamed:@"003.png"];
   [self.myMap addAnnotation:annotation];
}

    
    
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
     if([annotation isKindOfClass:[MKUserLocation class]]) {
     return nil;
     }
     
     MKAnnotationView *annView = (MKAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomAnnotation"];
     if(annView == nil) {
     annView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomAnnotation"];
     }
     annView.image = ((MyAnnotation *)annotation).image;
     return annView;
     
     }
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidAppear:(BOOL)animated{
   // [location stopUpdatingLocation];
    
    //設定地圖中心點
    self.myMap.centerCoordinate=CLLocationCoordinate2DMake(25.0860, 121.5275);
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocation *c=[locations objectAtIndex:0];
    NSLog(@"緯度：%f , 經度：%f , 高度：%f" , c.coordinate.latitude,c.coordinate.longitude , c.altitude);
}
@end
