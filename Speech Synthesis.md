#Speech Synthesizer

1. Create the project
	1. Create a new Single-view iPhone application
	2. Call the project SpeechSynthesizer
2. Build the interface
	1. Open the main.storyboard and add a textfield and a button
	2. Label the button "Speak"
3. Adding properties and actions
	1. Connect the textfield up to a property called `textfield`
	2. Connect the buttons action up to a method called `speakUtterance`
	3. Create a new property for the speech synthesizer

`@property (strong) AVSpeechSynthesizer *speech;`

4. Code it up a notch

Import the AVFoundation framework

	#import <AVFoundation/AVFoundation.h>

Add the following code to `viewDidLoad:`

	_speech = [[AVSpeechSynthesizer alloc] init];
	
Add the following code to the `speakUtterance` method

	// creating an utterance with the textfields text
	AVSpeechUtterance *mmg = [AVSpeechUtterance speechUtteranceWithString:_textfield.text];
	
	// setting a rate for the utterance to run at
	[mmg setRate:0.175];
	
	// telling the synthesizer to synthesize and play the utterance.
	[_speech speakUtterance:mmg];
	
Run the code and listen to the marvellous utterances of your phone!	