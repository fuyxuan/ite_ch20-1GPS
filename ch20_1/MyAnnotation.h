//
//  MyAnnotation.h
//  ch20_1
//
//  Created by 傅昱軒 on 2015/5/28.
//  Copyright (c) 2015年 ite. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>

//可根據MKAnnotation的規範，直接複製過來
@property (nonatomic , readonly) CLLocationCoordinate2D coordinate;

//加一個圖片的屬性
@property (nonatomic) UIImage *image;

-(id) initWithLocation:(CLLocationCoordinate2D)coord;

@end
