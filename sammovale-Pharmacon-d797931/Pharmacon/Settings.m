//
//  Settings.m
//  Pharmacon
//
//  Created by Sam Vale on 31/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Settings.h"

@interface Settings ()

@end

@implementation Settings




-(IBAction)UpdateWIFI;{
    
    if (SwitchWIFI.on) { 
        
        NSLog(@"WIFI Data is Enabled");
        
        
        
    }
    
    else 
    {
        NSLog(@"WIFI Data is Disabled");
    }
    
    
    
    
}
-(IBAction)UpdateCel;{
    if (SwitchCel.on) { 
        
        NSLog(@"Cellular Data is Enabled");
    
    
    }

    else 
    {
        NSLog(@"Cellular Data is Disabled");
    }

    
    
    
    
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
	// Do any additional setup after loading the view.
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
