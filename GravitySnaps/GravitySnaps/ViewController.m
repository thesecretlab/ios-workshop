//
//  ViewController.m
//  GravitySnaps
//
//  Created by Tim Nugent on 5/02/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UISnapBehavior *snap;
@property (nonatomic, strong) UIGravityBehavior *gravity;
@property (nonatomic, strong) UICollisionBehavior *collision;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	_animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
	_animator.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tap:(id)sender
{
	UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
	CGPoint point = [tap locationInView:self.view];
	
	[_animator removeAllBehaviors];
	
	UISnapBehavior *newSnap = [[UISnapBehavior alloc] initWithItem:self.image snapToPoint:point];
	self.snap = newSnap;
    [self.animator addBehavior:self.snap];
}

- (void)dynamicAnimatorDidPause:(UIDynamicAnimator *)animator
{
	if (_gravity)
		[_animator removeAllBehaviors];
		
	_gravity = [[UIGravityBehavior alloc] initWithItems:@[_image]];
	[_animator addBehavior:_gravity];
	
	_collision = [[UICollisionBehavior alloc] initWithItems:@[_image]];
	_collision.translatesReferenceBoundsIntoBoundary = YES;
	[_animator addBehavior:_collision];
}

@end
