//
//  ForceTouchGestureRecognizer.m
//  ForceTouchGestureRecognizerExample
//
//  Created by Yu Sugawara on 9/25/15.
//  Copyright © 2015 Yu Sugawara. All rights reserved.
//

#import "ForceTouchGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@interface ForceTouchGestureRecognizer ()

@property (nonatomic, readwrite) CGFloat force;

@end

@implementation ForceTouchGestureRecognizer

- (instancetype)init
{
    if (self = [super init]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithTarget:(id)target action:(SEL)action
{
    if (self = [super initWithTarget:target action:action]) {
        [self commonInit];
    }
    return self;
}

- (void)awakeFromNib
{
    [self commonInit];
}

- (void)commonInit
{
    self.forceSensitivity = 1.;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.force = 0.;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if ([touch respondsToSelector:@selector(force)] && touch.force >= touch.maximumPossibleForce*self.forceSensitivity) {
        self.force = touch.force;
        self.state = UIGestureRecognizerStateRecognized;
    }    
}

@end
