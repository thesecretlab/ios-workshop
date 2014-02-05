# Application Delegates

1. Create a new project
	1. Create a single-page application
	2. Name it DelegateBackgrounds
2. Add logging messages to the application delegate methods inside AppDelegate.m
	- applicationDidFinishLaunching:
	- applicationWillResignActive:
	- applicationDidEnterBackground:
	- applicationWillEnterForeground:
	- applicationDidBecomeActive:
	- applicationWillTerminate:

3. Run the app
	1. Once the app launches you should see the logs for applicationDidFinishLaunching: and applicationDidBecomeActive:
	2. Double tap the Home button and the logs for applicationWillResignActive: will appear
	3. Press the Home button once and the logs for applicationWillResignActive: and applicationDidEnterBackground: will appear

*If you kill the simulator or the app through Xcode none of the resigning active/background methods will be called*