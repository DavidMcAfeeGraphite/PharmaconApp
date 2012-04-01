//
//  ViewController.h
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.

#import <UIKit/UIKit.h>
#import "About.h"

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *button;
    UIView *myImageView;
    IBOutlet UITextField *textField;
    
    
}

-(IBAction)GRAPHITEBUTTON;
-(IBAction)Search;
@property (nonatomic, retain) IBOutlet UITextField *textField;
-(IBAction)downloadSimulation;

@end
