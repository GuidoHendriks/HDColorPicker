//
//  HDDetailViewController.m
//  HDColorPickerDemo
//
//  Created by Guido Hendriks on 24-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import "HDDetailViewController.h"

@interface HDDetailViewController ()
- (void)configureView;
@end

@implementation HDDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
