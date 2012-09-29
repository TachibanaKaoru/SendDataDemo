//
//  CarActivity.m
//  sendDataDemo
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012年 Toyship.org. All rights reserved.
//

#import "CarActivity.h"

@implementation CarActivity
- (NSString *)activityType {
    return @"Car";
}

- (NSString *)activityTitle {
    return @"Car";
}

- (UIImage *)activityImage {
    return [UIImage imageNamed:@"Car"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems{
	return YES;
	
}

- (void)prepareWithActivityItems:(NSArray *)activityItems;{
	NSLog(@"prepare!!");
	
	[super prepareWithActivityItems:activityItems];
	
}

- (UIViewController *)activityViewController{
	return nil;
}

- (void)performActivity{
	
	NSLog(@"perform!!");
	
	// do something with activityItems
	
	[self activityDidFinish:YES];
}

- (void)activityDidFinish:(BOOL)completed{
	NSLog(@"finished!!");
	
	[super activityDidFinish:completed];
}
@end
