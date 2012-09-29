//
//  SnowActivity.m
//  sendDataDemo
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012年 Toyship.org. All rights reserved.
//

#import "SnowActivity.h"

@implementation SnowActivity
- (NSString *)activityType {
    return @"Snow";
}

- (NSString *)activityTitle {
    return @"Snow";
}

- (UIImage *)activityImage {
    return [UIImage imageNamed:@"Snow"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems{
	return YES;
	
}

- (void)prepareWithActivityItems:(NSArray *)activityItems;{
	NSLog(@"prepare!!");
	
	[super prepareWithActivityItems:activityItems];
	
	if( self.snowViewController == nil){
		self.snowViewController = [[SnowViewController alloc] init];
		self.snowViewController.delegate = self;
	}
	
}

- (UIViewController *)activityViewController{
	return self.snowViewController;
}

- (void)performActivity{
// this is not called.
}

- (void)activityDidFinish:(BOOL)completed{
	NSLog(@"finished!!");
	
	[super activityDidFinish:completed];
}
@end
