//
//  HDColorPickerSlider.h
//  SliderTest
//
//  Created by Guido Hendriks on 22-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HDColorPicker;

typedef NSArray *(^SliderGradientColorsBlock)(CGFloat hue, CGFloat saturation, CGFloat brightness);

@interface HDColorPickerSlider : UISlider

@property (nonatomic, assign) HDColorPicker *colorPicker;
@property (nonatomic, copy) SliderGradientColorsBlock colorsBlock;

@end
