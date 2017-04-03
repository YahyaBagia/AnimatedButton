//
//  PressButton.h
//  AnimatedButton
//
//  Created by Yahya on 15/02/17.
//  Copyright © 2017 yahya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PressButton : UIButton

-(void)animateOnPress:(BOOL)animate;
-(void)setDefaultImageWithImageName:(NSString *)imageName;
-(void)setSelectedImageWithImageName:(NSString *)imageName andColor:(UIColor*)color;

@end
