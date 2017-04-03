//
//  MagnificationButton.h
//  CustomButton
//
//  Created by Yahya on 15/02/17.
//  Copyright © 2017 Yahya. All rights reserved.
//

#import "MagnificationButton.h"

#define magnificationDuration 0.1

@implementation MagnificationButton

-(void)magnifyOnPress:(BOOL)animate{
    if(animate){
        [self addTarget:self action:@selector(magnifyAnimation) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(unmagnifyAnimation) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)magnifyAnimation{
    [UIView animateWithDuration:magnificationDuration animations:^{
        self.transform = CGAffineTransformMakeScale(1.15, 1.15);
    }];
}

-(void)unmagnifyAnimation{
    [UIView animateWithDuration:magnificationDuration animations:^{
        self.transform = CGAffineTransformMakeScale(1, 1);
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
