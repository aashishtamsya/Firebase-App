//
//  SignUpViewController.m
//  ATFirebase
//
//  Created by Student P_03 on 21/09/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signUpAction:(id)sender {
    
    NSString *email = self.emailField.text;
    NSString *password = self.passwordField.text;
    
    if (email.length > 0 && password.length >7) {
        
        [[FIRAuth auth] createUserWithEmail:email password:password completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
            
            if (error != nil) {
                NSLog(@"%@",error.localizedDescription);
            }
            else {
                
                if (user != nil) {
                    
                    [[FIRAuth auth] signInWithEmail:email password:password completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
                        if (error != nil) {
                            NSLog(@"%@",error.localizedDescription);
                        }
                        else {
                            if (user != nil) {
                                NSLog(@"Successfully sign in.");
                            }
                        }
                    }];
                    
                }
                else {
                    NSLog(@"Nil USer/ not signed in");
                }
            }
        }];
    }
    
    
    
    
}
@end
