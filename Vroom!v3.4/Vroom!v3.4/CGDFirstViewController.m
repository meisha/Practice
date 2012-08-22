//
//  CGDFirstViewController.m
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import "CGDFirstViewController.h"
#import "CGDSecondViewController.h"

@interface CGDFirstViewController ()

@end

@implementation CGDFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
//::::Close Keyboard::::
-(IBAction)closeKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

@end
