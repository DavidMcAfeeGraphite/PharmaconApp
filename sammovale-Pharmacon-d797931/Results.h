//
//  Results.h
//  Pharmacon
//
//  Created by Sam Vale on 18/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Results : UIViewController{
    IBOutlet UITextField *textField1;
    IBOutlet UILabel *label;
    UISegmentedControl *segmentedControl;

    
	}
@property (nonatomic, retain) IBOutlet UITextField *textField1;
-(IBAction)Search;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) UISegmentedControl *segmentedControl;
-(IBAction)SegmentControl;
   
@end
