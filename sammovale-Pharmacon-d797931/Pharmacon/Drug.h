//
//  Drug.h
//  Pharmacon
//
//  Created by Sam Vale on 29/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVFoundation/AVFoundation.h"


@interface Drug : UIViewController{
    AVAudioPlayer *audioPlayer;
    
}
-(IBAction)Play;
@end
