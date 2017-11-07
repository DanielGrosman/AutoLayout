//
//  LPAViewController.m
//  Autolayout
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPAViewController.h"

@interface LPAViewController ()

@property (nonatomic, weak) UIButton *squareButton;
@property (nonatomic, weak) UIButton *portraitButton;
@property (nonatomic, weak) UIButton *landscapeButton;

@property (nonatomic, weak) UIView *framingView;
@property (nonatomic, weak) NSLayoutConstraint *framingViewHeightConstraint;
@property (nonatomic, weak) NSLayoutConstraint *framingViewWidthConstraint;
@property (nonatomic, strong) UIView *purpleBox;
@property (nonatomic, strong) UIView *redBox;
@property (nonatomic, strong) UIView *orangeBox1;
@property (nonatomic, strong) UIView *orangeBox2;
@property (nonatomic, strong) UIView *blueBox1;
@property (nonatomic, strong) UIView *blueBox2;
@property (nonatomic, strong) UIView *blueBox3;
@property (nonatomic, strong) UIView *space1;
@property (nonatomic, strong) UIView *space2;
@property (nonatomic, strong) UIView *space3;
@property (nonatomic, strong) UIView *space4;

@end

@implementation LPAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIButton *squareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [squareButton setTitle:@"Square" forState:UIControlStateNormal];
    [squareButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:squareButton];
    squareButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.squareButton = squareButton;
    
    UIButton *portraitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [portraitButton setTitle:@"Portrait" forState:UIControlStateNormal];
    [portraitButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:portraitButton];
    portraitButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.portraitButton = portraitButton;
    
    UIButton *landscapeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [landscapeButton setTitle:@"Landscape" forState:UIControlStateNormal];
    [landscapeButton addTarget:self action:@selector(resizeFramingView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:landscapeButton];
    landscapeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.landscapeButton = landscapeButton;
    
    UIView *framingView = [[UIView alloc] initWithFrame:CGRectZero];
    framingView.translatesAutoresizingMaskIntoConstraints = NO;
    framingView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:framingView];
    self.framingView = framingView;
    
    
    // Purple Box with Constraints
    self.purpleBox = [[UIView alloc] initWithFrame:CGRectZero];
    self.purpleBox.translatesAutoresizingMaskIntoConstraints = NO;
    self.purpleBox.backgroundColor = UIColor.purpleColor;
    [self.framingView addSubview:self.purpleBox];
    
    NSLayoutConstraint *purpleBoxTrailingConstraint = [NSLayoutConstraint constraintWithItem:self.purpleBox attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:framingView attribute:NSLayoutAttributeTrailing multiplier:1 constant:-20];
    purpleBoxTrailingConstraint.active = YES;
    
    NSLayoutConstraint *purpleBoxBottomConstraint = [NSLayoutConstraint constraintWithItem:self.purpleBox attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:framingView attribute:NSLayoutAttributeBottom multiplier:1 constant:-20];
    purpleBoxBottomConstraint.active = YES;
    
      NSLayoutConstraint *purpleBoxWidthContraint = [NSLayoutConstraint constraintWithItem:self.purpleBox attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:framingView attribute:NSLayoutAttributeWidth multiplier:305.0/500.0 constant:0];
    purpleBoxWidthContraint.active = YES;
    
  NSLayoutConstraint *purpleBoxHeightContraint = [NSLayoutConstraint constraintWithItem:self.purpleBox attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:50];
    purpleBoxHeightContraint.active = YES;
    
    
    //Red Box with Constraints
    self.redBox = [[UIView alloc] initWithFrame:CGRectZero];
    self.redBox.translatesAutoresizingMaskIntoConstraints = NO;
    self.redBox.backgroundColor = UIColor.redColor;
    [self.framingView addSubview:self.redBox];
    
    NSLayoutConstraint *redBoxTrailingConstraint = [NSLayoutConstraint constraintWithItem:self.redBox attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:framingView attribute:NSLayoutAttributeTrailing multiplier:1 constant:-20];
    redBoxTrailingConstraint.active = YES;
    
    NSLayoutConstraint *redBoxTopConstraint = [NSLayoutConstraint constraintWithItem:self.redBox attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:framingView attribute:NSLayoutAttributeTop multiplier:1 constant: 20];
    redBoxTopConstraint.active = YES;
    
    //Orange Box1 with Constraints
    self.orangeBox1 = [[UIView alloc] initWithFrame:CGRectZero];
    self.orangeBox1.translatesAutoresizingMaskIntoConstraints = NO;
    self.orangeBox1.backgroundColor = UIColor.orangeColor;
    [self.redBox addSubview:self.orangeBox1];

    NSLayoutConstraint *orangeBox1HeightConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:30];
    orangeBox1HeightConstraint.active = YES;

    NSLayoutConstraint *orangeBox1WidthConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:70];
    orangeBox1WidthConstraint.active = YES;
    
    NSLayoutConstraint *orangeBox1LeadingConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.redBox attribute:NSLayoutAttributeLeading multiplier:1 constant:8];
    orangeBox1LeadingConstraint.active = YES;

    NSLayoutConstraint *orangeBox1TopConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.redBox attribute:NSLayoutAttributeTop multiplier:1 constant:8];
    orangeBox1TopConstraint.active = YES;

    NSLayoutConstraint *orangeBox1BottomConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox1 attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.redBox attribute:NSLayoutAttributeBottom multiplier:1 constant:-8];
    orangeBox1BottomConstraint.active = YES;
    
    //Orange Box2 with Constraints
    self.orangeBox2 = [[UIView alloc] initWithFrame:CGRectZero];
    self.orangeBox2.translatesAutoresizingMaskIntoConstraints = NO;
    self.orangeBox2.backgroundColor = UIColor.orangeColor;
    [self.redBox addSubview:self.orangeBox2];
    
    NSLayoutConstraint *orangeBox2HeightConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:30];
    orangeBox2HeightConstraint.active = YES;
    
    NSLayoutConstraint *orangeBox2WidthConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:50];
    orangeBox2WidthConstraint.active = YES;
    
    NSLayoutConstraint *orangeBox2TrailingConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox2 attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.redBox attribute:NSLayoutAttributeTrailing multiplier:1 constant:-8];
    orangeBox2TrailingConstraint.active = YES;
    
    NSLayoutConstraint *orangeBox2LeadingConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox2 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.orangeBox1 attribute:NSLayoutAttributeTrailing multiplier:1 constant:8];
    orangeBox2LeadingConstraint.active = YES;
    
    NSLayoutConstraint *orangeBox2TopConstraint = [NSLayoutConstraint constraintWithItem:self.orangeBox2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.redBox attribute:NSLayoutAttributeTop multiplier:1 constant: 8];
    orangeBox2TopConstraint.active = YES;
    
    
    
// Initiate Spacers
    self.space1 = [[UIView alloc] initWithFrame:CGRectZero];
    self.space1.alpha = 0;
    self.space1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.framingView addSubview:self.space1];
    
    self.space2 = [[UIView alloc] initWithFrame:CGRectZero];
    self.space2.alpha = 0;
    self.space2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.framingView addSubview:self.space2];
    
    self.space3 = [[UIView alloc] initWithFrame:CGRectZero];
    self.space3.alpha = 0;
    self.space3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.framingView addSubview:self.space3];
    
    self.space4 = [[UIView alloc] initWithFrame:CGRectZero];
    self.space4.alpha = 0;
    self.space4.translatesAutoresizingMaskIntoConstraints = NO;
    [self.framingView addSubview:self.space4];

    
    // Blue Box 1
    self.blueBox1 = [[UIView alloc] initWithFrame:CGRectZero];
    self.blueBox1.translatesAutoresizingMaskIntoConstraints = NO;
    self.blueBox1.backgroundColor = UIColor.blueColor;
    [self.framingView addSubview:self.blueBox1];
    
    // Blue Box 2
    self.blueBox2 = [[UIView alloc] initWithFrame:CGRectZero];
    self.blueBox2.translatesAutoresizingMaskIntoConstraints = NO;
    self.blueBox2.backgroundColor = UIColor.blueColor;
    [self.framingView addSubview:self.blueBox2];
    
    NSLayoutConstraint *blueBox2WidthConstraint = [NSLayoutConstraint constraintWithItem:self.blueBox2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:50];
    blueBox2WidthConstraint.active = YES;

    NSLayoutConstraint *centerBlueBox2OnXAxis = [NSLayoutConstraint constraintWithItem:self.blueBox2 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:framingView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    centerBlueBox2OnXAxis.active = YES;
    
    // Blue Box 3
    self.blueBox3 = [[UIView alloc] initWithFrame:CGRectZero];
    self.blueBox3.translatesAutoresizingMaskIntoConstraints = NO;
    self.blueBox3.backgroundColor = UIColor.blueColor;
    [self.framingView addSubview:self.blueBox3];
    
    // Set the Blue Box Contraints using visual format language
    NSDictionary *views = @{
                            @"space1":self.space1,
                            @"blueBox1":self.blueBox1,
                            @"space2":self.space2,
                            @"blueBox2":self.blueBox2,
                            @"space3":self.space3,
                            @"blueBox3":self.blueBox3,
                            @"space4":self.space4,
                            };
    
    NSArray *blueBoxConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[space1][blueBox1(50)][space2(==space1)][blueBox2(50)][space3(==space2)][blueBox3(50)][space4(==space3)]|"
                                                                          options:NSLayoutFormatAlignAllLeft | NSLayoutFormatAlignAllRight
                                                                          metrics:nil
                                                                            views:views];
    [NSLayoutConstraint activateConstraints:blueBoxConstraints];
    
    
    

    NSString *buttonsHorizontalConstraintsFormat = @"|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|";
    NSArray *buttonsHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:buttonsHorizontalConstraintsFormat
                                                                   options:NSLayoutFormatAlignAllCenterY
                                                                    metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(squareButton, portraitButton, landscapeButton)];
    [NSLayoutConstraint activateConstraints:buttonsHorizontalConstraints];
    
    NSLayoutConstraint *squareButtonBottomConstraint = [NSLayoutConstraint constraintWithItem:squareButton
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-50.0];
    squareButtonBottomConstraint.active = YES;
    
    NSLayoutConstraint *framingViewCenterXConstraint = [NSLayoutConstraint constraintWithItem:framingView
                                                                                    attribute:NSLayoutAttributeCenterX
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:self.view
                                                                                    attribute:NSLayoutAttributeCenterX
                                                                                   multiplier:1.0
                                                                                     constant:0.0];
    framingViewCenterXConstraint.active = YES;
    
    NSLayoutConstraint *framingViewCenterY = [NSLayoutConstraint constraintWithItem:framingView
                                                                          attribute:NSLayoutAttributeCenterY
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.view
                                                                          attribute:NSLayoutAttributeCenterY
                                                                         multiplier:1.0
                                                                           constant:-50.0];
    framingViewCenterY.active = YES;
    
    self.framingViewHeightConstraint = [NSLayoutConstraint constraintWithItem:framingView
                                                                                   attribute:NSLayoutAttributeHeight
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:nil
                                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                                  multiplier:1.0
                                                                                    constant:500.0];
    self.framingViewHeightConstraint.active = YES;
    
    self.framingViewWidthConstraint = [NSLayoutConstraint constraintWithItem:framingView
                                                                                  attribute:NSLayoutAttributeWidth
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:nil
                                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                                 multiplier:1.0
                                                                                   constant:500.0];
    self.framingViewWidthConstraint.active = YES;

    
    // Set up your views and constraints here
    
    
}

/**
 Resize the frame of the framing view depending on which button was pressed.
 */
- (void)resizeFramingView:(id)sender
{
    CGFloat newWidth = 0.0;
    CGFloat newHeight = 0.0;
    
    if (sender == self.squareButton) {
        newWidth = 500.0;
        newHeight = 500.0;
    } else if (sender == self.portraitButton) {
        newWidth = 350.0;
        newHeight = 550.0;
    } else if (sender == self.landscapeButton) {
        newWidth = 900.0;
        newHeight = 300.0;
    }
    
    [UIView animateWithDuration:2.0 animations:^(){
        self.framingViewHeightConstraint.constant = newHeight;
        self.framingViewWidthConstraint.constant = newWidth;
        [self.view layoutIfNeeded];
    }];
}

@end
