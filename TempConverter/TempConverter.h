//
//  TempConverter.h
//  TempConverter
//
//  Created by Angus Huang on 1/17/14.
//  Copyright (c) 2014 Angus Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TempConverter : NSObject

+ (double)convertFtoC:(double)fahrenheit;
+ (double)convertCtoF:(double)celsius;

@end
