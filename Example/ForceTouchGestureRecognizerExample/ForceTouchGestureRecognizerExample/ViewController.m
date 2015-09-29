//
//  ViewController.m
//  ForceTouchGestureRecognizerExample
//
//  Created by Yu Sugawara on 9/25/15.
//  Copyright © 2015 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"
#import "ForceTouchGestureRecognizer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tapView;
@property (strong, nonatomic) IBOutlet ForceTouchGestureRecognizer *forceTouchGestureRecognizer;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *singleTapGestureRecognizer;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *doubleTapGestureRecognizer;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *longPressGestureRecognizer;

@property (weak, nonatomic) IBOutlet UILabel *gestureLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.forceTouchGestureRecognizer addTarget:self action:@selector(viewForceTouched:)];
    self.forceTouchGestureRecognizer.forceSensitivity = 0.5;
    [self.singleTapGestureRecognizer addTarget:self action:@selector(viewSingleTapped:)];
    [self.doubleTapGestureRecognizer addTarget:self action:@selector(viewDoubleTapped:)];
    [self.longPressGestureRecognizer addTarget:self action:@selector(viewlongPressed:)];
    
    [self.singleTapGestureRecognizer requireGestureRecognizerToFail:self.doubleTapGestureRecognizer];    
}

- (void)viewForceTouched:(ForceTouchGestureRecognizer *)sender
{
    [self updateGestureLabel:[NSString stringWithFormat:@"Force tapped, force = %f", sender.force]];
}

- (void)viewSingleTapped:(ForceTouchGestureRecognizer *)sender
{
    [self updateGestureLabel:@"Single tapped"];
}

- (void)viewDoubleTapped:(ForceTouchGestureRecognizer *)sender
{
    [self updateGestureLabel:@"Double tapped"];
}

- (void)viewlongPressed:(ForceTouchGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateBegan) {
        [self updateGestureLabel:@"Long pressed - began"];
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        [self updateGestureLabel:@"Long pressed - Ended"];
    }
}

- (void)updateGestureLabel:(NSString *)gestureString
{
    NSLog(@"%@", gestureString);
    self.gestureLabel.text = gestureString;
        
    [UIView animateWithDuration:0.15
                     animations:^{
                         self.gestureLabel.alpha = 1.;
                     } completion:^(BOOL finished) {
                         if (finished) {
                             [UIView animateWithDuration:0.3
                                                   delay:1.
                                                 options:kNilOptions
                                              animations:^{
                                                  self.gestureLabel.alpha = 0.;
                                              } completion:nil];
                         }
                     }];
}

@end
