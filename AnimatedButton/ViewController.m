//
//  ViewController.m
//  AnimatedButton
//
//  Created by Yahya on 15/02/17.
//  Copyright © 2017 yahya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpSelectionButton];
    [self setUpPressAnimationButton];
    [self setUpMagnificationAnimationButton];
    [self setUpFamButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Button Selection
-(void)setUpSelectionButton{
    [_btnSelection setDefaultImageWithImageName:@"icon_name"];
    [_btnSelection setSelectedImageWithImageName:@"icon_name" andColor:[UIColor redColor]];
}

- (IBAction)btnSelectionClicked:(id)sender {
    [_btnSelection setSelected:!_btnSelection.isSelected withAnimation:YES];
}
#pragma mark -

#pragma mark - Button Press
-(void)setUpPressAnimationButton{
    [_btnPress setDefaultImageWithImageName:@"icon_name"];
    [_btnPress setSelectedImageWithImageName:@"icon_name" andColor:[UIColor purpleColor]];
    [_btnPress animateOnPress:YES];
}

- (IBAction)btnPressClicked:(id)sender {
    _btnPress.selected = !_btnPress.isSelected;
}
#pragma mark -

#pragma mark - Button Magnify
-(void)setUpMagnificationAnimationButton{
    [_btnMagnify setDefaultImageWithImageName:@"icon_name"];
    [_btnMagnify setSelectedImageWithImageName:@"icon_name" andColor:[UIColor purpleColor]];
    [_btnMagnify magnifyOnPress:YES];
}

- (IBAction)btnMagnifyClicked:(id)sender {
    _btnMagnify.selected = !_btnMagnify.isSelected;
}
#pragma mark -

#pragma mark - Button Fam (Fade-out and magnification)
-(void)setUpFamButton{
    [_btnFam setDefaultImageWithImageName:@"icon_name"];
    [_btnFam setSelectedImageWithImageName:@"icon_name" andColor:[UIColor redColor]];
}
- (IBAction)btnFamClicked:(id)sender {
    [_btnFam setSelected:!_btnFam.isSelected withAnimation:YES];
}
@end
