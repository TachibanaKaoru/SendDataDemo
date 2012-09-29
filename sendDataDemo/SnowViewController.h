//
//  SnowViewController.h
//  sendDataDemo
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012年 Toyship.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SnowActivity;

@interface SnowViewController : UIViewController
@property(assign)SnowActivity* delegate;
- (IBAction)closeMe:(id)sender;

@end
