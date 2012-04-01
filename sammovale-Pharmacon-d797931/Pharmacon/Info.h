//
//  Info.h
//  Pharmacon
//
//  Created by Sam Vale on 27/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


@interface Info : UIViewController{
    IBOutlet UIButton *button;
    IBOutlet UISwipeGestureRecognizer *swipeGestureRecognizer;
    
}

-(IBAction)playVideo;

@end
 