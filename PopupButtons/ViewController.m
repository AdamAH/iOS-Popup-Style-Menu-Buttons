//
//  ViewController.m
//  PopupButtons
//
//  Created by Adam on 2014-11-23.
//  Copyright (c) 2014 pb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize showMenuButton = _showMenuButton;
@synthesize postButton = _postButton;
@synthesize refreshButton = _refreshButton;
@synthesize buttonsState = _buttonsState;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Initially, the buttons are collapsed, so they are in a closed state
    self.buttonsState = @"Closed";
    
}

- (IBAction)showMenu:(id)sender
{
    /* If the menu is closed / collapsed, animate the other buttons (post and refresh), that are hidden
     behind the open menu button, so that they rise up a bit. Also rotate the open menu button 45 degrees
     so that it looks like x (close). Otherwise, bring the buttons back down behind the main button
     to hide them. */
    
    if([self.buttonsState isEqualToString:@"Closed"])
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.05];
        self.refreshButton.frame = CGRectMake(self.refreshButton.frame.origin.x, self.refreshButton.frame.origin.y - 55, self.refreshButton.frame.size.width, self.refreshButton.frame.size.height);
        [UIView commitAnimations];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.08];
        self.postButton.frame = CGRectMake(self.postButton.frame.origin.x, self.postButton.frame.origin.y - 95, self.postButton.frame.size.width, self.postButton.frame.size.height);
        
        // Rotate Button to make the icon look liks x (close / collapse menu)
        self.showMenuButton.transform = CGAffineTransformMakeRotation((45*M_PI)/180);
        [UIView commitAnimations];
        
        self.buttonsState = @"Open";
        
    }
    else
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.08];
        self.refreshButton.frame = CGRectMake(self.refreshButton.frame.origin.x, self.refreshButton.frame.origin.y + 55, self.refreshButton.frame.size.width, self.refreshButton.frame.size.height);
        [UIView commitAnimations];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.05];
        self.postButton.frame = CGRectMake(self.postButton.frame.origin.x, self.postButton.frame.origin.y + 95, self.postButton.frame.size.width, self.postButton.frame.size.height);
        
        // Rotate Button Back to normal position (+ / open menu)
        self.showMenuButton.transform = CGAffineTransformMakeRotation((90*M_PI)/180);
        [UIView commitAnimations];
        
        self.buttonsState = @"Closed";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
