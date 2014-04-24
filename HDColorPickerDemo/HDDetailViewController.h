//
//  HDDetailViewController.h
//  HDColorPickerDemo
//
//  Created by Guido Hendriks on 24-04-14.
//  Copyright (c) 2014 Hendriks Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HDDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
