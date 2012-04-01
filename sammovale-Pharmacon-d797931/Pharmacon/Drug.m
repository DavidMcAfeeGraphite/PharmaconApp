//
//  Drug.m
//  Pharmacon
//
//  Created by Sam Vale on 29/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Drug.h"
#import "AVFoundation/AVFoundation.h"

@interface Drug ()

@end

@implementation Drug


-(IBAction)Play;{
    // Make sure the audio is at the start of the stream.
    self->audioPlayer.currentTime = 0;
    
    [self->audioPlayer play];  
    NSLog(@"Playing Audio");
}
    
    
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Paracetamol 1" 
                                                         ofType:@"mp3"];
    
    // Convert the file path to a URL.
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filePath];
    
    //Initialize the AVAudioPlayer.
    self->audioPlayer = [[AVAudioPlayer alloc] 
                         initWithContentsOfURL:fileURL error:nil];
    
    // Preloads the buffer and prepares the audio for playing.
    [self->audioPlayer prepareToPlay];}


    
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
