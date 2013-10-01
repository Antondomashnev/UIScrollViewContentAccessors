//
//  UIScrollView+ContentAccessors.m
//  UIScrollViewAccessors
//
//  Created by Anton Domashnev on 26.09.13.
//  Copyright (c) 2013 Anton Domashnev. All rights reserved.
//

#import "UIScrollView+ContentAccessors.h"

@implementation UIScrollView (ContentAccessors)

- (CGFloat)contentOffsetX{
    return self.contentOffset.x;
}

- (CGFloat)contentOffsetY{
    return self.contentOffset.y;
}

- (void)setContentOffsetX:(CGFloat)newContentOffsetX{
    self.contentOffset = CGPointMake(newContentOffsetX, self.contentOffset.y);
}

- (void)setContentOffsetY:(CGFloat)newContentOffsetY{
    self.contentOffset = CGPointMake(self.contentOffset.x, newContentOffsetY);
}

- (CGFloat)contentInsetBottom{
    return self.contentInset.bottom;
}

- (void)setContentInsetBottom:(CGFloat)contentInsetBottom{
    self.contentInset = UIEdgeInsetsMake(self.contentInset.top, self.contentInset.left, contentInsetBottom, self.contentInset.right);
}

- (CGFloat)contentInsetLeft{
    return self.contentInset.left;
}

- (void)setContentInsetLeft:(CGFloat)contentInsetLeft{
    self.contentInset = UIEdgeInsetsMake(self.contentInset.top, contentInsetLeft, self.contentInset.bottom, self.contentInset.right);
}

- (CGFloat)contentInsetRight{
    return self.contentInset.right;
}

- (void)setContentInsetRight:(CGFloat)contentInsetRight{
    self.contentInset = UIEdgeInsetsMake(self.contentInset.top, self.contentInset.left, self.contentInset.bottom, contentInsetRight);
}

- (CGFloat)contentInsetTop{
    return self.contentInset.top;
}

- (void)setContentInsetTop:(CGFloat)contentInsetTop{
    self.contentInset = UIEdgeInsetsMake(contentInsetTop, self.contentInset.left, self.contentInset.bottom, self.contentInset.right);
}

- (CGFloat)contentHeight{
    return self.contentSize.height;
}

- (void)setContentHeight:(CGFloat)contentHeight{
    self.contentSize = CGSizeMake(self.contentSize.width, contentHeight);
}

- (CGFloat)contentWidth{
    return self.contentSize.width;
}

- (void)setContentWidth:(CGFloat)contentWidth{
    self.contentSize = CGSizeMake(contentWidth, self.contentSize.height);
}

@end
