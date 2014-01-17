//
//  TempConverter.m
//  TempConverter
//
//  Created by Angus Huang on 1/17/14.
//  Copyright (c) 2014 Angus Huang. All rights reserved.
//

#import "TempConverter.h"

@implementation TempConverter

+ (double)convertFtoC:(double) fahrenheit {
    return ((fahrenheit - 32) * 5 / 9);
}

+ (double)convertCtoF:(double) celsius {
    return (celsius * 9 / 5 + 32);
}

@end
