//
//  SelectionButton.m
//  AnimatedButton
//
//  Created by Yahya on 16/02/17.
//  Copyright © 2017 yahya. All rights reserved.
//

#import "SelectionButton.h"

#define selectionDuration   0.2

@implementation SelectionButton

-(void)setSelected:(BOOL)selected withAnimation:(BOOL)shouldAnimate{
    if(shouldAnimate){
        self.selected = selected;
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
        self.transform = CGAffineTransformMakeScale(0.8, 0.8);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:selectionDuration animations:^{
            self.transform = CGAffineTransformMakeScale(1.2, 1.2);
        }];
    }];
}

-(void)unselectionAnimation{
    [UIView animateWithDuration:selectionDuration animations:^{
        self.transform = CGAffineTransformMakeScale(1.4, 1.4);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:selectionDuration animations:^{
            self.transform = CGAffineTransformMakeScale(1.0, 1.0);
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
