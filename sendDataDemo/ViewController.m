//
//  ViewController.m
//  sendDataDemo
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012年 Toyship.org. All rights reserved.
//

#import "ViewController.h"

#import "SnowActivity.h"
#import "CarActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openURL:(id)sender {
	
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"myreceivedemo://testinformation"]];

}

- (IBAction)sendJpg:(id)sender {
	
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"book" withExtension:@"jpg"];
	
	if( url ){
		self.diController = [UIDocumentInteractionController interactionControllerWithURL:url];
		
		NSDictionary* dic = [NSDictionary dictionaryWithObject:@"fruit" forKey:@"tag"];
		self.diController.annotation = dic;
		self.diController.delegate = self;
		
		if ([self.diController presentOptionsMenuFromRect:self.view.frame
												   inView:self.view animated:YES]){
		}
		else{
			NSLog(@"There is no app for this file.");
		}
	}

}

- (IBAction)sendPng:(id)sender {
	
	NSURL* url = [[NSBundle mainBundle] URLForResource:@"tree" withExtension:@"png"];
	
	if( url ){
		self.diController = [UIDocumentInteractionController interactionControllerWithURL:url];
		
		NSDictionary* dic = [NSDictionary dictionaryWithObject:@"fruit" forKey:@"tag"];
		self.diController.annotation = dic;
		self.diController.delegate = self;
		
		if ([self.diController presentOptionsMenuFromRect:self.view.frame
												   inView:self.view animated:YES]){
		}
		else{
			NSLog(@"There is no app for this file.");
		}
	}

}
- (void)dealloc {
    [super dealloc];
}
- (void)viewDidUnload {
    [super viewDidUnload];
}

- (IBAction)act1:(id)sender {
	
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
	NSString *text = @"Hello World!";
	NSArray* actItems = [NSArray arrayWithObjects:text, nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}
- (IBAction)act2:(id)sender {
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
	UIImage* image = [UIImage imageNamed:@"book.jpg"];
	NSArray* actItems = [NSArray arrayWithObjects:image, nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}

- (IBAction)act3:(id)sender {
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
	UIColor* red = [UIColor redColor];
	NSArray* actItems = [NSArray arrayWithObjects:red, nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}

- (IBAction)act4:(id)sender {
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
    NSString *url = @"http://www.apple.com/";
	NSArray* actItems = [NSArray arrayWithObjects:url, nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}

- (IBAction)act5:(id)sender {
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
	NSString *text = @"Hello World!";
	UIImage* image = [UIImage imageNamed:@"book.jpg"];
	NSArray* actItems = [NSArray arrayWithObjects:text, image, nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}

- (IBAction)act6:(id)sender {
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
	NSString *text = @"Hello World!";
	UIImage* image1 = [UIImage imageNamed:@"book.jpg"];
	UIImage* image2 = [UIImage imageNamed:@"tree.png"];
	NSArray* actItems = [NSArray arrayWithObjects:text, image1, image2 , nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}

- (IBAction)act7:(id)sender {
	if( ![UIActivity class]){
		// show error dialog
		return;
	}
	
	NSString *text = @"Hello World!";
	UIImage* image1 = [UIImage imageNamed:@"book.jpg"];
	UIImage* image2 = [UIImage imageNamed:@"tree.png"];
	NSArray* actItems = [NSArray arrayWithObjects:text, image1, image2 , nil];
	
	// original activity
	CarActivity* a1 = [[[CarActivity alloc] init] autorelease];
	SnowActivity* a2 = [[[SnowActivity alloc] init] autorelease];
	NSArray* myItems = [NSArray arrayWithObjects:a1, a2, nil];
	
	UIActivityViewController *activityView = [[[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:myItems] autorelease];
	
	[self presentViewController:activityView animated:YES completion:^{
    }];

}

@end
