//
//  Settings.h
//  Pharmacon
//
//  Created by Sam Vale on 31/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Settings : UIViewController{
IBOutlet    UISwitch *SwitchCel;
IBOutlet    UISwitch *SwitchWIFI;
    
}
-(IBAction)UpdateWIFI;
-(IBAction)UpdateCel;

@end
