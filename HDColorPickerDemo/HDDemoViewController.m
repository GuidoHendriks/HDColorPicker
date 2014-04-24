//
//  HDDemoViewController.m
//  HDColorPickerDemo
//
//  Created by Guido Hendriks on 24-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import "HDDemoViewController.h"
#import "HDColorPicker/HDColorPicker.h"

@interface HDDemoViewController ()

@end

@implementation HDDemoViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.colorPicker setColor:[UIColor blueColor]];
    self.colorPreviewView.backgroundColor = [self.colorPicker currentColor];
}

#pragma mark - Color Picker Delegate
-(void)colorPicker:(HDColorPicker *)colorPicker didChangeColor:(UIColor *)color {
    self.colorPreviewView.backgroundColor = color;
}

@end
