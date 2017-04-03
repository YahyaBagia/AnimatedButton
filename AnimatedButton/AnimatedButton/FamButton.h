//
//  FamButton.h
//  AnimatedButton
//
//  Created by Yahya on 16/02/17.
//  Copyright © 2017 yahya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FamButton : UIButton

-(void)setSelected:(BOOL)selected withAnimation:(BOOL)shouldAnimate;
-(void)setDefaultImageWithImageName:(NSString *)imageName;
-(void)setSelectedImageWithImageName:(NSString *)imageName andColor:(UIColor*)color;

@end
