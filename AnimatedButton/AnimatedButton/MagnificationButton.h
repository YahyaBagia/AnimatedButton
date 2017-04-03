//
//  MagnificationButton.h
//  CustomButton
//
//  Created by Yahya on 15/02/17.
//  Copyright © 2017 Yahya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MagnificationButton : UIButton

-(void)magnifyOnPress:(BOOL)animate;
-(void)setDefaultImageWithImageName:(NSString *)imageName;
-(void)setSelectedImageWithImageName:(NSString *)imageName andColor:(UIColor*)color;

@end
