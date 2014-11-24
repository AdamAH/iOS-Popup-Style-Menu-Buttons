//
//  ViewController.h
//  PopupButtons
//
//  Created by Adam on 2014-11-23.
//  Copyright (c) 2014 pb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *showMenuButton;
@property (weak, nonatomic) IBOutlet UIButton *postButton;
@property (weak, nonatomic) IBOutlet UIButton *refreshButton;
@property (strong, nonatomic) NSString *buttonsState;

- (IBAction)showMenu:(id)sender;

@end

