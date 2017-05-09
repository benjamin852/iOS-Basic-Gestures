//
//  TapViewController.m
//  iOS Gestures
//
//  Created by Ben Weinberg on 2017-03-16.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()
@property (nonatomic) UIView *tapBox;
@end

@implementation TapViewController
- (void) viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height= 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) -width/2, CGRectGetMidY(self.view.bounds) -height/2, width, height);
    
    self.tapBox = [[UIView alloc] initWithFrame:frame];
    self.tapBox.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.tapBox];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapMethod:)];
    [self.tapBox addGestureRecognizer:tapGesture];
    
}
- (void) tapMethod: (UITapGestureRecognizer*) sender {
    UIColor *newColor = [UIColor redColor];
    if ([self.tapBox.backgroundColor isEqual:[UIColor redColor]]) {
        newColor = [UIColor greenColor];
    }
    
    self.tapBox.backgroundColor = newColor;
}


@end
