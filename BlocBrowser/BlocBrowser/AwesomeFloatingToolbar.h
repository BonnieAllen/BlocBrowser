//
//  AwesomeFloatingToolbar.h
//  BlocBrowser
//
//  Created by King Kittenhead on 3/4/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AwesomeFloatingToolbar;

@protocol AwesomeFloatingToolbarDelegate <NSObject>

@optional

- (void) floatingToolbar:(AwesomeFloatingToolbar *)toolbar didSelectButtonWithTitle:(NSString *)title;
- (void) floatingToolbar:(AwesomeFloatingToolbar *)toolbar didSelectButton: (UIButton *)button;
- (void) floatingToolbar:(AwesomeFloatingToolbar *)toolbar didTryToPanWithOffset:(CGPoint)offset;
- (void) floatingToolbar:(AwesomeFloatingToolbar *)toolbar didTryToPinchToScale:(CGFloat)scale;
- (void) floatingToolbar:(AwesomeFloatingToolbar *)toolbar didTryToLongPressToRotateColors:(BOOL)rotateColors;

@end

@interface AwesomeFloatingToolbar : UIView

- (instancetype) initWithFourTitles:(NSArray *)titles;

- (void) setEnabled:(BOOL)enabled forButtonWithTitle:(NSString *)title;

@property (nonatomic, weak) id <AwesomeFloatingToolbarDelegate> delegate;

@end
