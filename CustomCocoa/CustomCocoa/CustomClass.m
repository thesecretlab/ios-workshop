//
//  CustomClass.m
//  CustomCocoa
//
//  Created by Tim Nugent on 28/01/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import "CustomClass.h"

@implementation CustomClass

- (id)init
{
	if ([super init])
	{
		// do any custom initialisation here
		NSLog(@"Initialising!");
	}
	return self;
}

- (void)doSomeStuff
{
	if ([self isActive])
		NSLog(@"Doing some stuff");
	else
		NSLog(@"Sorry, active");
}

- (void)doSomeOtherStuff:(NSString *)input
{
	if ([self isActive])
		NSLog(@"Doing some other stuff with %@",input);
	else
		NSLog(@"Sorry, not active");
}

@end
