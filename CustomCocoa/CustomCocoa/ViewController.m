//
//  ViewController.m
//  CustomCocoa
//
//  Created by Tim Nugent on 28/01/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import "ViewController.h"
#import "CustomClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	CustomClass *custom = [[CustomClass alloc] init];
	
	custom.active = YES;
	[custom doSomeStuff];
	[custom doSomeOtherStuff:@"Stuff"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
