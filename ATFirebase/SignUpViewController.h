//
//  SignUpViewController.h
//  ATFirebase
//
//  Created by Student P_03 on 21/09/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FirebaseAuth/FirebaseAuth.h>

@interface SignUpViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *emailField;

@property (strong, nonatomic) IBOutlet UITextField *passwordField;
- (IBAction)signUpAction:(id)sender;

@end
