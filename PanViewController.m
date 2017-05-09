//
//  PanViewController.m
//  iOS Gestures
//
//  Created by Ben Weinberg on 2017-03-16.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController
  
- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    CGPoint locationInView = [sender locationInView:self.view];
    sender.view.center = locationInView;
  //  CGPoint translationInView = [sender translationInView:self.view];
  // CGPoint oldCenter = sender.view.center;
  //  CGPoint newCenterValue = CGPointMake(oldCenter.x +translationInView.x, oldCenter.y +translationInView.y);
    [sender setTranslation:CGPointZero inView:self.view];
}


@end
