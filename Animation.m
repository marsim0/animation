//
//  Animation.m
//  animation
//
//  Created by Мариам Б. on 25.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "Animation.h"


@implementation Animation

+ (void) change_Color: (UIView *) view Color: (UIColor *) color {
    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionFade;
    animation.duration = 0.4;
    [animation setFillMode:kCAFillModeBoth];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;
}

+ (void) change_Position: (UIButton *) button View: (UIView *) view Points: (int) points {
    CGRect newFrame = [view frame];
    newFrame.origin.x = view.frame.origin.x + points;
    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0.8 options:0 animations:^{
        view.frame = newFrame;
        int64_t delay = 10;
        dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_MSEC);
        dispatch_after(time, dispatch_get_main_queue(), ^{
            CATransition * animation = [CATransition animation];
            animation.subtype = kCATransitionFromLeft;
            [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
            [view.layer addAnimation:animation forKey:@"Transition"];
            button.alpha = 0;
        });

    } completion:^(BOOL finished) {
        if (finished) {
            button.alpha = 1;
        }
    }];   

}

+ (void) set_Shadow_Effect : (UIView *) view Alpha: (int) alpha {

    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionFade;
    animation.duration = 0.4;
    [animation setFillMode:kCAFillModeBoth];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.layer.shadowColor = [UIColor colorWithWhite: 0.5 alpha:alpha].CGColor;
    view.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    view.layer.shadowRadius = 15.5f;
    view.layer.shadowOpacity = 6.5f;
    view.layer.masksToBounds = NO;

    
}

@end
