//
//  HDColorPickerDelegate.h
//  SliderTest
//
//  Created by Guido Hendriks on 23-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HDColorPicker;

@protocol HDColorPickerDelegate <NSObject>

-(void)colorPicker:(HDColorPicker *)colorPicker didChangeColor:(UIColor *)color;

@end
