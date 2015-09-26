//
//  ForceTapGestureRecognizer.h
//  ForceTapGestureRecognizerExample
//
//  Created by Yu Sugawara on 9/25/15.
//  Copyright © 2015 Yu Sugawara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForceTapGestureRecognizer : UIGestureRecognizer

/**
 *  This property is sensitivity of force of the touch to perform an action. Default is 1.0.
 */
@property (nonatomic) CGFloat forceSensitivity;

@end
