//
//  FamButton.m
//  AnimatedButton
//
//  Created by Yahya on 16/02/17.
//  Copyright © 2017 yahya. All rights reserved.
//

#import "FamButton.h"

#define selectionDuration   0.2

@implementation FamButton{
    BOOL aSelected;
}

-(void)setSelected:(BOOL)selected withAnimation:(BOOL)shouldAnimate{
    if(shouldAnimate){
        aSelected = selected;
        if(selected){
            [self selectionAnimation];
        }else{
            [self unselectionAnimation];
        }
    }else{
        /* usual selection without animation */
        self.selected = selected;
    }
}

-(void)selectionAnimation{
    [UIView animateWithDuration:selectionDuration animations:^{
        self.alpha = 0.0;
        self.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
    } completion:^(BOOL finished) {
        self.selected = aSelected;
        [UIView animateWithDuration:selectionDuration animations:^{
            self.transform = CGAffineTransformMakeScale(1.5, 1.5);
            self.alpha = 1.0;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:selectionDuration animations:^{
                self.transform = CGAffineTransformMakeScale(1.2, 1.2);
            }];
        }];
    }];
}

-(void)unselectionAnimation{
    self.selected = aSelected;
    [UIView animateWithDuration:selectionDuration animations:^{
        self.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:selectionDuration animations:^{
            self.transform = CGAffineTransformMakeScale(0.0001, 0.0001);
            self.alpha = 0.0;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:selectionDuration animations:^{
                self.transform = CGAffineTransformMakeScale(1.0, 1.0);
                self.alpha = 1.0;
            }];
        }];
    }];
}

-(void)setDefaultImageWithImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    [self setImage:image forState:UIControlStateNormal];
}

-(void)setSelectedImageWithImageName:(NSString *)imageName andColor:(UIColor*)color{
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self setImage:image forState:UIControlStateSelected];
    [self setImage:image forState:UIControlStateHighlighted];
    self.tintColor = color;
}


@end
