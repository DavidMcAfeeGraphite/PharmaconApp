//
//  Info.m
//  Pharmacon
//
//  Created by Sam Vale on 27/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Info.h"
#import <MediaPlayer/MediaPlayer.h>


@interface Info ()

@end

@implementation Info


-(IBAction)playVideo;{
    
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"Pharmacon" ofType:@"mov"]];
    
    MPMoviePlayerViewController *playercontroller = [[MPMoviePlayerViewController alloc] 
                                                     initWithContentURL:url];
    
    [self presentMoviePlayerViewControllerAnimated:playercontroller];
    
    playercontroller.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    
    [playercontroller.moviePlayer play];
    
        playercontroller = nil;
            
    
    [button setHidden:NO];
    swipeGestureRecognizer.enabled = YES;

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
        [button setHidden:YES];
    swipeGestureRecognizer.enabled = NO;
    
    
    //IM TRYING TO ONLY HIDE THE BUTTON FOR THE FIRST TIME THE VIEW LOADS AND THEN WHEN THE USER CLICKS ON THE INFO BUTTON LATER ON HE/SHE DOESNT HAVE TO CLICK ON THE PLAY BUTTON TO SHOW THE UP ARROW BUTTON.
    
   // BOOL buttonrun = [[NSUserDefaults standardUserDefaults]boolForKey:@"ButtonRunBefore"];
    //if(!buttonrun) {
        
       // [button setHidden:YES];

        //[[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"ButtonRunBefore"];
       // [[NSUserDefaults standardUserDefaults] synchronize];

       // }
       
    
    
    
    BOOL HideAlert = [[NSUserDefaults standardUserDefaults]boolForKey:@"HideAlert"];
    if(!HideAlert) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please Watch Video" message:@"Please watch the follwoing video to continue to use Pharmacon." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"HideAlert"];
        [[NSUserDefaults standardUserDefaults] synchronize];
}
}

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
