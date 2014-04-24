//
//  HDColorPicker.m
//  SliderTest
//
//  Created by Guido Hendriks on 23-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import "HDColorPicker.h"
#import "HDColorPickerSlider.h"

@implementation HDColorPicker

-(void)setHueSlider:(HDColorPickerSlider *)hueSlider {
    _hueSlider = hueSlider;
    _hueSlider.colorPicker = self;
    _hueSlider.colorsBlock = ^NSArray *(CGFloat hue, CGFloat saturation, CGFloat brightness) {
        return  @[
                  (id)[[UIColor colorWithHue:0.0f saturation:saturation brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:1.0f / 6 saturation:saturation brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:1.0f / 6 * 2 saturation:saturation brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:1.0f / 6 * 3 saturation:saturation brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:1.0f / 6 * 4 saturation:saturation brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:1.0f / 6 * 5 saturation:saturation brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:1.0f saturation:saturation brightness:brightness alpha:1.0f] CGColor]
                  ];
    };
    [_hueSlider addTarget:self action:@selector(sliderDidChangeValue:) forControlEvents:UIControlEventValueChanged];
    self.hue = _hueSlider.value;
}
-(void)setSaturationSlider:(HDColorPickerSlider *)saturationSlider {
    _saturationSlider = saturationSlider;
    _saturationSlider.colorPicker = self;
    _saturationSlider.colorsBlock = ^NSArray *(CGFloat hue, CGFloat saturation, CGFloat brightness) {
        return  @[
                  (id)[[UIColor colorWithHue:hue saturation:0.0f brightness:brightness alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:hue saturation:1.0f brightness:brightness alpha:1.0f] CGColor]
                  ];
    };
    [_saturationSlider addTarget:self action:@selector(sliderDidChangeValue:) forControlEvents:UIControlEventValueChanged];
    self.saturation = _saturationSlider.value;
}
-(void)setBrightnessSlider:(HDColorPickerSlider *)brightnessSlider {
    _brightnessSlider = brightnessSlider;
    _brightnessSlider.colorPicker = self;
    _brightnessSlider.colorsBlock = ^NSArray *(CGFloat hue, CGFloat saturation, CGFloat brightness) {
        return  @[
                  (id)[[UIColor colorWithHue:hue saturation:saturation brightness:0.0f alpha:1.0f] CGColor],
                  (id)[[UIColor colorWithHue:hue saturation:saturation brightness:1.0f alpha:1.0f] CGColor]
                  ];
    };
    [_brightnessSlider addTarget:self action:@selector(sliderDidChangeValue:) forControlEvents:UIControlEventValueChanged];
    self.brightness = _brightnessSlider.value;
}
-(IBAction)sliderDidChangeValue:(HDColorPickerSlider *)slider {
    if (slider == self.hueSlider) {
        self.hue = slider.value;
    } else if (slider == self.saturationSlider) {
        self.saturation = slider.value;
    } else if (slider == self.brightnessSlider) {
        self.brightness = slider.value;
    }
    [self.delegate colorPicker:self didChangeColor:[self currentColor]];
}
-(void)setHue:(CGFloat)hue {
    if (_hue != hue) {
        _hue = hue;
        [self.saturationSlider setNeedsDisplay];
        [self.brightnessSlider setNeedsDisplay];
    }
}
-(void)setSaturation:(CGFloat)saturation {
    if (_saturation != saturation) {
        _saturation = saturation;
        [self.hueSlider setNeedsDisplay];
        [self.brightnessSlider setNeedsDisplay];
    }
}
-(void)setBrightness:(CGFloat)brightness {
    if (_brightness != brightness) {
        _brightness = brightness;
        [self.hueSlider setNeedsDisplay];
        [self.saturationSlider setNeedsDisplay];
    }
}
-(void)setColor:(UIColor *)color {
    CGFloat hue = 0;
    CGFloat saturation = 0;
    CGFloat brightness = 0;
    
    [color getHue:&hue saturation:&saturation brightness:&brightness alpha:NULL];
    
    self.hue = hue;
    self.saturation = saturation;
    self.brightness = brightness;
    
    self.hueSlider.value = hue;
    self.saturationSlider.value = saturation;
    self.brightnessSlider.value = brightness;
}
-(UIColor *)currentColor {
    return [UIColor colorWithHue:self.hue saturation:self.saturation brightness:self.brightness alpha:1.0f];
}

@end
