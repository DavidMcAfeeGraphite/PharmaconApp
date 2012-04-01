//
//  Results.m
//  Pharmacon
//
//  Created by Sam Vale on 18/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Results.h"

@interface Results ()

@end

@implementation Results
@synthesize textField1;
@synthesize label;


-(IBAction)SegmentControl;{
    
    
   }


-(IBAction)Search;{
    
}

- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
    for (UIView* view in self.view.subviews) {
        if ([view isKindOfClass:[UITextField class]])
            [view resignFirstResponder];
    }
}


- (void)viewDidLoad
{//This would be handled with a selector method. Please survey and comphrend code
    
    
   
    
    
    UIAlertView *alert;
    alert = [[UIAlertView alloc] initWithTitle:@"\nSearching Cached Database\nPlease Wait..." message:nil delegate:self cancelButtonTitle:nil otherButtonTitles: nil] ;
    [alert show];
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    
    indicator.center = CGPointMake(alert.bounds.size.width / 2, alert.bounds.size.height - 50);
    [indicator startAnimating];
    [alert addSubview:indicator];
    
    [alert dismissWithClickedButtonIndex:0 animated:YES];
    
    
    
    //have any questions??
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
