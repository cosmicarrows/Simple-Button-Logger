//
//  ViewController.m
//  SImpleButtonLogger
//
//  Created by Laurence Wingo on 11/1/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "NewNameViewController.h"

@interface NewNameViewController ()

@end

@implementation NewNameViewController
@synthesize textField;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonWasTouched:(id)sender {
    
    textField.text = @"Tapped, music's playing!";
    NSLog(@"Play Sampled Beat");
     textField.text = @"Tapped, music's playing TWICE!";
    
    
}
- (IBAction)buttonWasTouched2:(id)sender {
    
    textField.text = @"";
}


- (IBAction)exitTextFields:(id)sender {
    
    UITextField *thisTextField = (UITextField *) sender; //Cast sender to a textfield
    
    [thisTextField resignFirstResponder];
    NSLog(@"The user typed: %@", thisTextField.text);
    
}

@end
