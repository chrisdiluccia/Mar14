//
//  View.h
//  Mar14
//
//  Created by Christopher J Di Luccia on 3/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Frog;
@class Lady;
@class Hippo;
@class Dylan;
@class Apple;
@class Hidden;

@interface View: UIView {
    
    NSTimeInterval delayFr1;
    NSTimeInterval delayFr2;
    NSTimeInterval delayLa1;
    NSTimeInterval delayLa2;
    NSTimeInterval delayHi1;
    NSTimeInterval delayHi2;
    NSTimeInterval delayDy1;
    NSTimeInterval delayDy2;
    
    Apple *apple;
    Hidden *hidden;
    
    bool frog1Clicked;
    bool frog2Clicked;
    bool lady1Clicked;
    bool lady2Clicked;
    bool hippo1Clicked;
    bool hippo2Clicked;
    bool dylan1Clicked;
    bool dylan2Clicked;
    
    //holds the two subviews we transtion between
	NSArray *frog1Views;
    NSArray *frog2Views;
    NSArray *lady1Views;
    NSArray *lady2Views;
    NSArray *hippo1Views;
    NSArray *hippo2Views;
    NSArray *dylan1Views;
    NSArray *dylan2Views;
    
	//index in views of the currently displayed little view: 0 or 1
	NSUInteger frog1Index;
    NSUInteger frog2Index;
    NSUInteger lady1Index;
    NSUInteger lady2Index;
    NSUInteger hippo1Index;
    NSUInteger hippo2Index;
    NSUInteger dylan1Index;
    NSUInteger dylan2Index;
    
    //temp indexes for subview toggling
    NSUInteger frog1NewIndex;
    NSUInteger frog2NewIndex;
    NSUInteger lady1NewIndex;
    NSUInteger lady2NewIndex;
    NSUInteger hippo1NewIndex;
    NSUInteger hippo2NewIndex;
    NSUInteger dylan1NewIndex;
    NSUInteger dylan2NewIndex;
}

@end