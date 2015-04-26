//
//  ViewController.m
//  animation
//
//  Created by Мариам Б. on 25.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view_TopFigure;
@property (weak, nonatomic) IBOutlet UIView *view_BottomFigure;
@property (weak, nonatomic) IBOutlet UISwitch *switcher;
- (IBAction)switch_Color:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button_TopChangePosition;
- (IBAction)changeTopPosition:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button_BottomChangePosition;
- (IBAction)changeBottomPosition:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self set_View];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) set_View {
    self.switcher.on = NO;
    wasTopButtonPressed = NO;
    wasBottomButtonPressed = NO;
    
    self.view_TopFigure.layer.backgroundColor = [UIColor orangeColor].CGColor;
    self.view_BottomFigure.layer.backgroundColor = [UIColor purpleColor].CGColor;
    
    self.view_TopFigure.layer.borderColor = [UIColor redColor].CGColor;
    self.view_BottomFigure.layer.borderColor = [UIColor blueColor].CGColor;
    
    self.view_TopFigure.layer.borderWidth = 3.0;
    self.view_BottomFigure.layer.borderWidth = 3.0;
    
    self.view_TopFigure.layer.cornerRadius = 50.0;
    self.view_BottomFigure.layer.cornerRadius = 50.0;

}

- (IBAction)switch_Color:(id)sender {
    if (self.switcher.on) {
        [Animation change_Color: self.view_TopFigure Color:[UIColor purpleColor]];
        [Animation change_Color: self.view_BottomFigure Color:[UIColor orangeColor]];
    } else {
        [Animation change_Color: self.view_TopFigure Color:[UIColor orangeColor]];
        [Animation change_Color: self.view_BottomFigure Color:[UIColor purpleColor]];
        ;
    }
}

- (IBAction)changeTopPosition:(id)sender {
    if (!wasTopButtonPressed) {
        [Animation change_Position:self.button_TopChangePosition View:self.view_TopFigure Points: 35];
        [Animation set_Shadow_Effect:self.view_TopFigure Alpha:1];
        wasTopButtonPressed = YES;
      
    } else {
        [Animation change_Position:self.button_TopChangePosition View:self.view_TopFigure Points: -35];
        [Animation set_Shadow_Effect:self.view_TopFigure Alpha:0];
        wasTopButtonPressed = NO;
    }
}

- (IBAction)changeBottomPosition:(id)sender {
    if (!wasBottomButtonPressed) {
        [Animation change_Position:self.button_BottomChangePosition View:self.view_BottomFigure Points: 35];
        [Animation set_Shadow_Effect:self.view_BottomFigure Alpha:1];
        wasBottomButtonPressed = YES;
        
    } else {
        [Animation change_Position:self.button_BottomChangePosition View:self.view_BottomFigure Points: -35];
        [Animation set_Shadow_Effect:self.view_BottomFigure Alpha:0];
        wasBottomButtonPressed = NO;
    }
}
@end
