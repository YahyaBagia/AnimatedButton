//
//  ViewController.h
//  AnimatedButton
//
//  Created by Yahya on 15/02/17.
//  Copyright © 2017 yahya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagnificationButton.h"
#import "PressButton.h"
#import "SelectionButton.h"
#import "FamButton.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet SelectionButton *btnSelection;
- (IBAction)btnSelectionClicked:(id)sender;

@property (weak, nonatomic) IBOutlet PressButton *btnPress;
- (IBAction)btnPressClicked:(id)sender;

@property (weak, nonatomic) IBOutlet MagnificationButton *btnMagnify;
- (IBAction)btnMagnifyClicked:(id)sender;

@property (weak, nonatomic) IBOutlet FamButton *btnFam;
- (IBAction)btnFamClicked:(id)sender;

@end
