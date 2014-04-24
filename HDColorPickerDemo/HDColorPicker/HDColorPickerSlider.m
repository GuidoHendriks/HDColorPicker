//
//  HDColorPickerSlider.m
//  SliderTest
//
//  Created by Guido Hendriks on 22-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import "HDColorPickerSlider.h"
#import "HDColorPicker.h"

@implementation HDColorPickerSlider

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setMinimumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
        [self setMaximumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    CAGradientLayer *gradientLayer = [self gradientLayerWithColors:self.colorsBlock(self.colorPicker.hue, self.colorPicker.saturation, self.colorPicker.brightness)];
    [self.layer addSublayer:gradientLayer];
}
-(CAGradientLayer *)gradientLayerWithColors:(NSArray *)colors {
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = CGRectMake(2, (self.bounds.size.height / 2) - 0.5, self.bounds.size.width - 4, 2);
    gradientLayer.startPoint = CGPointMake(0, 0.5f);
    gradientLayer.endPoint = CGPointMake(1.0f, 0.5f);
    gradientLayer.colors = colors;
    gradientLayer.zPosition = -1;
    return gradientLayer;
}

@end
