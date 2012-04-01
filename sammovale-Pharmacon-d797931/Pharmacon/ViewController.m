//
//  ViewController.m
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"
#import "Results.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;



//SEARCH FUNCTIONALITY NOT FINALISED YET
-(IBAction)Search;{
    NSString *name = [textField text];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:name forKey:@"name"];
     [defaults synchronize];
    
    	

    
    }

//I HAVE NOTED OUT THE IBACTION FOR NOW AS I DO NOT WANT 
//IT TO BE ACCIDENTALLY CLICKED AND THEN HAVING TO COMPLETELY QUIT THE APP


//-(IBAction)GRAPHITEBUTTON;{
       
    // get the view that's currently showing
    
    //BE SURE TO USE CORRECT NAMING CONVENTIONS
	//UIView *currentView = self.view;
	// get the the underlying UIWindow, or the view containing the current view view
	//UIView *theWindow = [currentView superview];
	
	// remove the current view and replace with myView1
	//[currentView removeFromSuperview];
    //[theWindow addSubview:myImageView];
    
     //BE SURE TO USE SAME SUPERVIEW NAMING
	
	// set up an animation for the transition between the views
	//CATransition *animation = [CATransition animation];
	//[animation setDuration:0.5];
	//[animation setType:kCATransitionPush];
	//[animation setSubtype:kCATransitionFromLeft];
    //[animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
	
	//[[theWindow layer] addAnimation:animation forKey:@"SwitchToView1"];
    
//}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //SUGGESTION TO RENAME THE BOOL TO SOMETHING MORE APPROPRAITE
    BOOL TandC = [[NSUserDefaults standardUserDefaults]boolForKey:@"RanBefore"];
    if(!TandC) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Pharmacon Guidelines" message:@"This app has been professionally made. It has been Approved by the New South Wales University on the 12th September 2012. This app should not be used to get advice on what drugs to take, rather it is used for reference for University Students. All information is 100 percent accurate and reliable. Copyright 2012 GRAPHITE. " delegate:self cancelButtonTitle:@"No Thanks"  otherButtonTitles: @"I Agree", nil];        [alert show];
            
        
    }
    //this is how we shall send the version number from a server. it starts with value 1, yet shall change when we get back some data from the server - still need to confer with Philipp on this end but the response section shall be where we put the code to change the version number and also get the url's sorted in the app.
    NSString *versionnumberofdatabase = @"1"; 
    
    
    NSMutableURLRequest *request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.pharmacon.site50.net/update.php"]];
    [request setHTTPMethod:@"POST"];
    
    NSString *post =[[NSString alloc] initWithFormat:@"versionnumberofdatabase=%@",versionnumberofdatabase];
    [request setHTTPBody:[post dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLResponse *response;
    NSError *err;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
    
    if (response) {
        NSLog(@"Connection to server was successful.");
        
        
        
        NSLog(@"Data saved");
        
    } else {
        NSLog(@"No response from server.");
    }
    
   }




- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
    for (UIView* view in self.view.subviews) {
        if ([view isKindOfClass:[UITextField class]])
            [view resignFirstResponder];
    }
}

//CONCEPT SHOWS HOW TO GET DATA FROM A URL - THIS SHALL BE GENERATED AND SHALL CHANGE WHEN I GET MORE INFORMATION FROM PHILIPP PLUS IT SHALL BE RELEVANT FOR MORE URLS BASED ON THE COMMAND FROM THE SERVER - THIS SHALL EVOLVE
-(IBAction)downloadSimulation {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],@"index.html"];   
    
    
    
    NSURL *url = [NSURL URLWithString:@"http://www.pharmacon.site50.net/database/4.xml"];
    NSData *urlData = [NSData dataWithContentsOfURL:url];
    [urlData writeToFile:filePath atomically:YES];
    
    
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        exit(0);
      //this is against human resources guidelines but can be used in this context  
    }
    
    //else if not compulsory here due to use of cancelButtonTitle parameters
    else if (buttonIndex == 1)
    {
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];

    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}




@end