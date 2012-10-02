//
//  CGDFirstViewController.h
//  Vroom!v3.4
//
//  Created by S. Meisha Ray on 8/21/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGDFirstViewController : UIViewController
{
    
}
@property (strong, nonatomic) IBOutlet UITextField *zipField;
-(IBAction)backgroundTap:(id)sender;

-(IBAction)closeKeyboard:(id)sender;


@end
