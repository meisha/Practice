//
//  CGDFirstViewController.h
//  Vroom!v1.0
//
//  Created by S. Meisha Ray on 8/22/12.
//  Copyright (c) 2012 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGDFirstViewController : UIViewController
{
    UIButton *submitButton;
}
@property (nonatomic, retain)IBOutlet UIButton *submitButton;
-(IBAction)clickSubmit:(id)sender;
-(IBAction)closeKeyboard:(id)sender;
@end
