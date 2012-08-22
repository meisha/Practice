//
//  CGDAddEventViewController.m
//  Vroom!v1.0
//
//  Created by S. Meisha Ray on 8/22/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import "CGDAddEventViewController.h"

@interface CGDAddEventViewController ()

@end

@implementation CGDAddEventViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Add Event", @"Add Event");
        self.tabBarItem.image = [UIImage imageNamed:@"plus"];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)closeKeyboard:(id)sender
{
    [sender resignFirstResponder];
}
@end
