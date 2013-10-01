//
//  TestSpec.m
//  UIScrollViewAccessors
//
//  Created by Anton Domashnev on 26.09.13.
//  Copyright (c) 2013 Anton Domashnev. All rights reserved.
//

#import "Kiwi.h"
#import "UIScrollView+ContentAccessors.h"

SPEC_BEGIN(UIScrollViewContentAccessorsSpec)

describe(@"UIScrollView+ContentAccessors", ^{
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, 100, 100)];
    
    context(@"When we set content offset", ^{
        
        beforeEach(^{
            scrollView.contentOffset = CGPointZero;
            scrollView.contentInset = UIEdgeInsetsZero;
            scrollView.contentSize = CGSizeZero;
        });
        
        it(@"should be accessable from custom offset accessors", ^{
            scrollView.contentOffset = CGPointMake(100, 50);
            [[theValue(scrollView.contentOffsetX) should] equal: theValue(100)];
            [[theValue(scrollView.contentOffsetY) should] equal: theValue(50)];
        });
    });
    
    context(@"When we set content inset", ^{
        
        beforeEach(^{
            scrollView.contentOffset = CGPointZero;
            scrollView.contentInset = UIEdgeInsetsZero;
            scrollView.contentSize = CGSizeZero;
        });
        
        it(@"should be accessable from custom inset accessors", ^{
            scrollView.contentInset = UIEdgeInsetsMake(11, 12, 13, 14);
            [[theValue(scrollView.contentInsetTop) should] equal: theValue(11)];
            [[theValue(scrollView.contentInsetLeft) should] equal: theValue(12)];
            [[theValue(scrollView.contentInsetRight) should] equal: theValue(14)];
            [[theValue(scrollView.contentInsetBottom) should] equal: theValue(13)];
        });
    });
    
    context(@"When we set content size", ^{
        
        beforeEach(^{
            scrollView.contentOffset = CGPointZero;
            scrollView.contentInset = UIEdgeInsetsZero;
            scrollView.contentSize = CGSizeZero;
        });
        
        it(@"It should be accessable from custom size accessors", ^{
            scrollView.contentSize = CGSizeMake(100, 120);
            [[theValue(scrollView.contentWidth) should] equal: theValue(100)];
            [[theValue(scrollView.contentHeight) should] equal: theValue(120)];
        });
    });
    
    context(@"When we change content offset by custom content accessors", ^{
        
        beforeAll(^{
            scrollView.contentOffset = CGPointZero;
            scrollView.contentInset = UIEdgeInsetsZero;
            scrollView.contentSize = CGSizeZero;
        });
        
        it(@"should affect on contentOffset property", ^{
            scrollView.contentOffsetX = 11;
            scrollView.contentOffsetY = 12;
            [[theValue(scrollView.contentOffset.x) should] equal: theValue(11)];
            [[theValue(scrollView.contentOffset.y) should] equal: theValue(12)];
        });
        
        it(@"shouldnt affect on contentInset property", ^{
            [[theValue(scrollView.contentInset.top) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentInset.top) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentInset.left) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentInset.left) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentInset.right) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentInset.right) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentInset.bottom) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentInset.bottom) shouldNot] equal: theValue(12)];
        });
        
        it(@"shouldnt affect on contentSize property", ^{
            [[theValue(scrollView.contentSize.width) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentSize.width) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentSize.height) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentSize.height) shouldNot] equal: theValue(12)];
        });
    });
    
    context(@"When we change content inset by custom inset accessors", ^{
        
        beforeAll(^{
            scrollView.contentOffset = CGPointZero;
            scrollView.contentInset = UIEdgeInsetsZero;
            scrollView.contentSize = CGSizeZero;
        });
        
        it(@"should affect on contentInset property", ^{
            scrollView.contentInsetTop = 10;
            scrollView.contentInsetLeft = 11;
            scrollView.contentInsetBottom = 12;
            scrollView.contentInsetRight = 13;
            [[theValue(scrollView.contentInset.top) should] equal: theValue(10)];
            [[theValue(scrollView.contentInset.left) should] equal: theValue(11)];
            [[theValue(scrollView.contentInset.right) should] equal: theValue(13)];
            [[theValue(scrollView.contentInset.bottom) should] equal: theValue(12)];
        });
        
        it(@"shouldnt affect on contentOffset property", ^{
            [[theValue(scrollView.contentOffset.x) shouldNot] equal: theValue(10)];
            [[theValue(scrollView.contentOffset.y) shouldNot] equal: theValue(10)];
            [[theValue(scrollView.contentOffset.x) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentOffset.y) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentOffset.x) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentOffset.y) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentOffset.x) shouldNot] equal: theValue(13)];
            [[theValue(scrollView.contentOffset.y) shouldNot] equal: theValue(13)];
        });
        
        it(@"shouldnt affect on contentSize property", ^{
            [[theValue(scrollView.contentSize.width) shouldNot] equal: theValue(10)];
            [[theValue(scrollView.contentSize.width) shouldNot] equal: theValue(10)];
            [[theValue(scrollView.contentSize.height) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentSize.height) shouldNot] equal: theValue(11)];
            [[theValue(scrollView.contentSize.width) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentSize.width) shouldNot] equal: theValue(12)];
            [[theValue(scrollView.contentSize.height) shouldNot] equal: theValue(13)];
            [[theValue(scrollView.contentSize.height) shouldNot] equal: theValue(13)];
        });
    });
    
    context(@"When we change content size by custom size accessors", ^{
        
        beforeAll(^{
            scrollView.contentOffset = CGPointZero;
            scrollView.contentInset = UIEdgeInsetsZero;
            scrollView.contentSize = CGSizeZero;
        });
        
        it(@"should affect on contentSize property", ^{
            scrollView.contentHeight = 120;
            scrollView.contentWidth = 200;
            [[theValue(scrollView.contentSize.width) should] equal: theValue(200)];
            [[theValue(scrollView.contentSize.height) should] equal: theValue(120)];
        });
        
        it(@"shouldnt affect on contentInset property", ^{
            [[theValue(scrollView.contentInset.top) shouldNot] equal: theValue(200)];
            [[theValue(scrollView.contentInset.left) shouldNot] equal: theValue(200)];
            [[theValue(scrollView.contentInset.right) shouldNot] equal: theValue(200)];
            [[theValue(scrollView.contentInset.bottom) shouldNot] equal: theValue(200)];
            [[theValue(scrollView.contentInset.top) shouldNot] equal: theValue(120)];
            [[theValue(scrollView.contentInset.left) shouldNot] equal: theValue(120)];
            [[theValue(scrollView.contentInset.right) shouldNot] equal: theValue(120)];
            [[theValue(scrollView.contentInset.bottom) shouldNot] equal: theValue(120)];
        });
        
        it(@"shouldnt affect on contentOffset property", ^{
            [[theValue(scrollView.contentOffset.x) shouldNot] equal: theValue(200)];
            [[theValue(scrollView.contentOffset.y) shouldNot] equal: theValue(200)];
            [[theValue(scrollView.contentOffset.x) shouldNot] equal: theValue(120)];
            [[theValue(scrollView.contentOffset.y) shouldNot] equal: theValue(120)];
        });
    });
});

SPEC_END
