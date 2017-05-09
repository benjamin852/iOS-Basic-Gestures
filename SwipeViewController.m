//
//  SwipeViewController.m
//  iOS Gestures
//
//  Created by Ben Weinberg on 2017-03-16.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()
@property (nonatomic) BOOL centered;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat heightBack = 50;
    CGFloat widthBack = (CGRectGetMidX(self.view.bounds) *2) - 50;
    CGRect backBoxFrame= CGRectMake(CGRectGetMidX(self.view.bounds) -widthBack/2, CGRectGetMidY(self.view.bounds) -heightBack/2, widthBack, heightBack);
    UIView *backBox = [[UIView alloc] initWithFrame:backBoxFrame];
    backBox.backgroundColor = [UIColor blueColor];
    [self.view addSubview:backBox];
    
    
    
    CGFloat height = 50;
    CGFloat width = (CGRectGetMidX(self.view.bounds) *2) -50;
    CGRect frontBoxFrame = CGRectMake(CGRectGetMidX(backBox.bounds) - width/2, CGRectGetMidY(backBox.bounds) - height/2, width, height);
    UIView *frontBox = [[UIView alloc] initWithFrame:frontBoxFrame];
    frontBox.backgroundColor = [UIColor redColor];
    [backBox addSubview:frontBox];
    
    backBox.clipsToBounds=YES;
    
    
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeftMethod:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [frontBox addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRightMethod:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [frontBox addGestureRecognizer:swipeRight];
    
}
- (void) swipeLeftMethod:(UISwipeGestureRecognizer*) sender {
    
    if (self.centered) {
        sender.view.transform = CGAffineTransformMakeTranslation(-100, 0);
        self.centered = NO;
    } else {
        sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
        self.centered = YES;
    }
}
- (void) swipeRightMethod : (UISwipeGestureRecognizer*) sender {
    if (self.centered) {
        sender.view.transform = CGAffineTransformMakeTranslation(100, 0);
        self.centered = NO;
    } else {
        sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
        self.centered = YES;
    }
}

@end
