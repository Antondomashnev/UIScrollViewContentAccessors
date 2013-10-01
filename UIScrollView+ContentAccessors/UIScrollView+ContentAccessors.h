//
//  UIScrollView+ContentAccessors.h
//  UIScrollViewAccessors
//
//  Created by Anton Domashnev on 26.09.13.
//  Copyright (c) 2013 Anton Domashnev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (ContentAccessors)

- (CGFloat)contentOffsetX;
- (void)setContentOffsetX:(CGFloat)newContentOffsetX;

- (CGFloat)contentOffsetY;
- (void)setContentOffsetY:(CGFloat)newContentOffsetY;

- (CGFloat)contentInsetTop;
- (void)setContentInsetTop:(CGFloat)contentInsetTop;

- (CGFloat)contentInsetLeft;
- (void)setContentInsetLeft:(CGFloat)contentInsetLeft;

- (CGFloat)contentInsetRight;
- (void)setContentInsetRight:(CGFloat)contentInsetRight;

- (CGFloat)contentInsetBottom;
- (void)setContentInsetBottom:(CGFloat)contentInsetBottom;

- (CGFloat)contentWidth;
- (void)setContentWidth:(CGFloat)contentWidth;

- (CGFloat)contentHeight;
- (void)setContentHeight:(CGFloat)contentHeight;

@end
