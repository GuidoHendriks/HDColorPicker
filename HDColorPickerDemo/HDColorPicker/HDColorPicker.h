//
//  HDColorPicker.h
//  SliderTest
//
//  Created by Guido Hendriks on 23-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HDColorPickerDelegate.h"

@class HDColorPickerSlider;

@interface HDColorPicker : NSObject

@property (nonatomic, strong) IBOutlet id<HDColorPickerDelegate> delegate;

@property (nonatomic, strong) IBOutlet HDColorPickerSlider *hueSlider;
@property (nonatomic, strong) IBOutlet HDColorPickerSlider *saturationSlider;
@property (nonatomic, strong) IBOutlet HDColorPickerSlider *brightnessSlider;

@property (nonatomic, assign) CGFloat hue;
@property (nonatomic, assign) CGFloat saturation;
@property (nonatomic, assign) CGFloat brightness;

-(void)setColor:(UIColor *)color;
-(UIColor *)currentColor;
-(IBAction)sliderDidChangeValue:(HDColorPickerSlider *)slider;

@end
