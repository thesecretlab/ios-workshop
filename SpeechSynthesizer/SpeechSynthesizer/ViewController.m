//
//  ViewController.m
//  SpeechSynthesizer
//
//  Created by Tim Nugent on 5/02/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (strong) AVSpeechSynthesizer *speech;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_speech = [[AVSpeechSynthesizer alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)speakUtterance:(id)sender
{
	// creating an utterance with the textfields text
	AVSpeechUtterance *mmg = [AVSpeechUtterance speechUtteranceWithString:_textfield.text];
	
	// setting a rate for the utterance to run at
	[mmg setRate:0.175];
	
	// telling the synthesizer to synthesize and play the utterance.
	[_speech speakUtterance:mmg];
}

@end
