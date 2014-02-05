# Custom Objective-C Class

1. Create a new project
	1. Create a single page application
	2. Name the Project 'CustomCocoa'
	3. Set the device type to iPhones
2. Create a new class
	1. Select New File from the File menu or press ⌘N
	2. Select Objective-C Class from the list
	3. Name the class CustomClass
	4. Make it a subclass of NSObject
3. Extend the class
	1. Open CustomClass.h
	2. Add a property and method definitions to the class

The code should sit inside the @implementation block

    @property (getter=isActive:) BOOL active;
    -(void)doSomeStuff;
    -(void)doSomeOtherStuff:(NSString *)input;
    
4. Code up the class

Inside the @implementation block of CustomClass.m add the following code

    -(id)init
	{
		if ([super init])
			NSLog(@“custom initialisation goes here”);
		return self;
	}
	- (void)doSomeStuff
	{
		if ([self isActive])
			NSLog(@"Doing some stuff");
		else
			NSLog(@"Sorry, not doing things");
	}
	- (void)doSomeOtherStuff:(NSString *)input
	{
		if ([self isActive])
			NSLog(@"Doing some other stuff with %@",input);
		else
			NSLog(@"Sorry, not doing things");
	}

	
5. Use the custom class

Inside the viewDidLoad: method of ViewController.m add the following code

    CustomClass *custom = [[CustomClass alloc] init];
    
    custom.active = YES;
    [custom doStuff];
    [custom doOtherStuff:@"Things"];

6. Run the App!