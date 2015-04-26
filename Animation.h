//
//  Animation.h
//  animation
//
//  Created by Мариам Б. on 25.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface Animation : NSObject 
+ (void) change_Color: (UIView *) view Color: (UIColor *) color ;
+ (void) change_Position: (UIButton *) button View: (UIView *) view Points: (int) points ;
+ (void) set_Shadow_Effect : (UIView *) view Alpha: (int) alpha ;
@end
