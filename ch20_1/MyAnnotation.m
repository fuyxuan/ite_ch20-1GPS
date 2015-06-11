//
//  MyAnnotation.m
//  ch20_1
//
//  Created by 傅昱軒 on 2015/5/28.
//  Copyright (c) 2015年 ite. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate, image;

-(id) initWithLocation:(CLLocationCoordinate2D)coord
{
    self = [super init];
    if (self) {
        coordinate = coord;
        
    }
    return self;
}

@end
