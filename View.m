//
//  View.m
//  Mar14
//
//  Created by Christopher J Di Luccia on 3/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "View.h"
#import "Frog.h"
#import "Lady.h"
#import "Hippo.h"
#import "Dylan.h"
#import "Apple.h"
#import "Hidden.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {

        CGFloat h = self.bounds.size.height;
        
        CGRect fr1 = CGRectMake(200, h-300, 100, 100);
        frog1Views = [NSArray arrayWithObjects:
                 [[Hidden alloc] initWithFrame: fr1],
                 [[Frog alloc] initWithFrame: fr1],
                 nil
                 ];
		frog1Index = 0;
		[self addSubview: [frog1Views objectAtIndex: frog1Index]];
        
        CGRect fr2 = CGRectMake(0, h-200, 100, 100);
        frog2Views = [NSArray arrayWithObjects:
                      [[Hidden alloc] initWithFrame: fr2],
                      [[Frog alloc] initWithFrame: fr2],
                      nil
                      ];
		frog2Index = 0;
		[self addSubview: [frog2Views objectAtIndex: frog2Index]];
        
        
        CGRect la1 = CGRectMake(100, h-300, 100, 100);
        lady1Views = [NSArray arrayWithObjects:
                     [[Hidden alloc] initWithFrame: la1],
                     [[Lady alloc] initWithFrame: la1],
                     nil
                     ];
		lady1Index = 0;
		[self addSubview: [lady1Views objectAtIndex: lady1Index]];
        
        CGRect la2 = CGRectMake(200, h-100, 100, 100);
        lady2Views = [NSArray arrayWithObjects:
                      [[Hidden alloc] initWithFrame: la2],
                      [[Lady alloc] initWithFrame: la2],
                      nil
                      ];
		lady2Index = 0;
		[self addSubview: [lady2Views objectAtIndex: lady2Index]];
        
        CGRect hi1 = CGRectMake(0, h-100, 100, 100);
        hippo1Views = [NSArray arrayWithObjects:
                     [[Hidden alloc] initWithFrame: hi1],
                     [[Hippo alloc] initWithFrame: hi1],
                     nil
                     ];
		hippo1Index = 0;
		[self addSubview: [hippo1Views objectAtIndex: hippo1Index]];
        
        CGRect hi2 = CGRectMake(200, h-200, 100, 100);
        hippo2Views = [NSArray arrayWithObjects:
                       [[Hidden alloc] initWithFrame: hi2],
                       [[Hippo alloc] initWithFrame: hi2],
                       nil
                       ];
		hippo2Index = 0;
		[self addSubview: [hippo2Views objectAtIndex: hippo2Index]];
        
        CGRect dy1 = CGRectMake(0, h-300, 100, 100);
        dylan1Views = [NSArray arrayWithObjects:
                     [[Hidden alloc] initWithFrame: dy1],
                     [[Dylan alloc] initWithFrame: dy1],
                     nil
                     ];
		dylan1Index = 0;
		[self addSubview: [dylan1Views objectAtIndex: dylan1Index]];
        
        CGRect dy2 = CGRectMake(100, h-100, 100, 100);
        dylan2Views = [NSArray arrayWithObjects:
                       [[Hidden alloc] initWithFrame: dy2],
                       [[Dylan alloc] initWithFrame: dy2],
                       nil
                       ];
		dylan2Index = 0;
		[self addSubview: [dylan2Views objectAtIndex: dylan2Index]];

        CGRect ap = CGRectMake(100, h-200, 100, 100);
        apple = [[Apple alloc] initWithFrame: ap];
        [self addSubview: apple];
        
         frogMatched = NO;
         ladyMatched = NO;
         hippoMatched = NO;
         dylanMatched = NO;
        
    }
    return self;
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	
     CGFloat h = self.bounds.size.height;
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView: self];
    NSUInteger newIndex = 0;
    
    if ((point.x >= 200) && (point.x <=300) && (point.y >=h-300) && (point.y <= h-200))
    {
        newIndex = 1 - frog1Index;	//toggle the index
        
        [UIView transitionFromView: [frog1Views objectAtIndex: frog1Index]
                            toView: [frog1Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        frog1Index = newIndex;
    }
    else if ((point.x >= 0 && point.x <=100) && (point.y >=h-200) && (point.y <= h-100))
    {
        newIndex = 1 - frog2Index;	//toggle the index
        
        [UIView transitionFromView: [frog2Views objectAtIndex: frog2Index]
                            toView: [frog2Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        frog2Index = newIndex;
    }
    else if ((point.x >= 100) && (point.x <= 200) && (point.y >=h-300) && (point.y <= h-200))
    {
        newIndex = 1 - lady1Index;	//toggle the index
        
        [UIView transitionFromView: [lady1Views objectAtIndex: lady1Index]
                            toView: [lady1Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        lady1Index = newIndex;
    }
    else if ((point.x >= 200) && (point.x <=300) && (point.y >=h-100) && (point.y <= h))
    {
        newIndex = 1 - lady2Index;	//toggle the index
        
        [UIView transitionFromView: [lady2Views objectAtIndex: lady2Index]
                            toView: [lady2Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        lady2Index = newIndex;
    }
    else if ((point.x >= 0) && (point.x <=100) && (point.y >=h-100) && (point.y <= h))
    {
        newIndex = 1 - hippo1Index;	//toggle the index
        
        [UIView transitionFromView: [hippo1Views objectAtIndex: hippo1Index]
                            toView: [hippo1Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        hippo1Index = newIndex;
    }
    else if ((point.x >= 200) && (point.x <=300) && (point.y >=h-200) && (point.y <= h-100))
    {
        newIndex = 1 - hippo2Index;	//toggle the index
        
        [UIView transitionFromView: [hippo2Views objectAtIndex: hippo2Index]
                            toView: [hippo2Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        hippo2Index = newIndex;
    }
    else if ((point.x >= 0) && (point.x <=100) && (point.y >=h-300) && (point.y <= h-200))
    {
        newIndex = 1 - dylan1Index;	//toggle the index
        
        [UIView transitionFromView: [dylan1Views objectAtIndex: dylan1Index]
                            toView: [dylan1Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        dylan1Index = newIndex;
    }
    else if ((point.x >= 100) && (point.x <= 200) && (point.y >= h-100) && (point.y <= h))
    {
        newIndex = 1 - dylan2Index;	//toggle the index
        
        [UIView transitionFromView: [dylan2Views objectAtIndex: dylan2Index]
                            toView: [dylan2Views objectAtIndex: newIndex]
                          duration: 2.0
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         ];
        
        dylan2Index = newIndex;
    }
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
