//
//  HDDemoViewController.h
//  HDColorPickerDemo
//
//  Created by Guido Hendriks on 24-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HDColorPickerDelegate.h"

@class HDColorPicker;

@interface HDDemoViewController : UIViewController<HDColorPickerDelegate>

@property (nonatomic, strong) IBOutlet HDColorPicker *colorPicker;
@property (nonatomic, strong) IBOutlet UIView *colorPreviewView;

@end
