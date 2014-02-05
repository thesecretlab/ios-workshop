#UIDynamics

1. Create the project
	1. Create a new Single-view iPhone application
	2. Call the project GravitySnaps
2. Create the interface
	1. Add a UIImageView onto the interface
	2. Place a small image into the imageview and resize the view to match the image dimensions
	3. Add a Tap Gesture Recogniser onto the view
3. Connect the interface to code
	1. Connect the UIImageView to a property called `image`
	2. Connect the gesture recognisers action to a method called `tap:`
4. Prepare for physics
	1. Add a new property to hold the dynamic animator `@property (nonatomic, strong)UIDynamicAnimator *animator;`
	2. Add a new property to hold the snapping behaviour `@property (nonatomic, strong) UISnapBehavior *snap;`
	3. Add a new property to hold the gravity `@property (nonatomic, strong) UIGravityBehavior *gravity;`
	4. Add a new property to hold the collision `@property (nonatomic, strong) UICollisionBehavior *collision;`
	5. Make the View Controller conform to the `UIDynamicAnimatorDelegate` protocol

Add the following to the `viewDidLoad:` method

	_animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
	_animator.delegate = self;

Add the following to `tap:` method
	
	UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
	CGPoint point = [tap locationInView:self.view];
	
	[_animator removeAllBehaviors];
	
	UISnapBehavior *newSnap = [[UISnapBehavior alloc] initWithItem:self.image snapToPoint:point];
	self.snap = newSnap;
    [self.animator addBehavior:self.snap];
    
Add the `- (void)dynamicAnimatorDidPause:(UIDynamicAnimator *)animator`method

	if (_gravity)
		[_animator removeAllBehaviors];
		
	_gravity = [[UIGravityBehavior alloc] initWithItems:@[_image]];
	[_animator addBehavior:_gravity];
	
	_collision = [[UICollisionBehavior alloc] initWithItems:@[_image]];
	_collision.translatesReferenceBoundsIntoBoundary = YES;
	[_animator addBehavior:_collision];


Run the code and be amazed!