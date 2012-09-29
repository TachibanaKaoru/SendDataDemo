//
//  ViewController.h
//  sendDataDemo
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012年 Toyship.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIDocumentInteractionControllerDelegate>
@property (retain,nonatomic)UIDocumentInteractionController* diController;
- (IBAction)openURL:(id)sender;
- (IBAction)sendJpg:(id)sender;
- (IBAction)sendPng:(id)sender;
- (IBAction)act1:(id)sender;
- (IBAction)act2:(id)sender;
- (IBAction)act3:(id)sender;
- (IBAction)act4:(id)sender;
- (IBAction)act5:(id)sender;
- (IBAction)act6:(id)sender;
- (IBAction)act7:(id)sender;

@end
