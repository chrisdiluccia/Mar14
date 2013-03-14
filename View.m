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

        delayFr1 = 2;
        delayFr2 = 2;
        delayLa1 = 2;
        delayLa2 = 2;
        delayHi1 = 2;
        delayHi2 = 2;
        delayDy1 = 2;
        delayDy2 = 2;
        frog1NewIndex = 0;
        frog2NewIndex = 0;
        lady1NewIndex = 0;
        lady2NewIndex = 0;
        hippo1NewIndex = 0;
        hippo2NewIndex = 0;
        dylan1NewIndex = 0;
        dylan2NewIndex = 0;
        
        CGFloat h = self.bounds.size.height;
        
        CGRect fr1 = CGRectMake(200, h-300, 100, 100);
        UIView *fr1Container = [[UIView alloc] initWithFrame: fr1];
        frog1Views = [NSArray arrayWithObjects:
                      [[Hidden alloc] initWithFrame: fr1Container.bounds],
                      [[Frog alloc] initWithFrame: fr1Container.bounds],
                      nil
                      ];
        frog1Index = 0;
        frog1Clicked = NO;
        [fr1Container addSubview: [frog1Views objectAtIndex: frog1Index]];
        [self addSubview: fr1Container];
        
        CGRect fr2 = CGRectMake(0, h-200, 100, 100);
        UIView *fr2Container = [[UIView alloc] initWithFrame: fr2];
        frog2Views = [NSArray arrayWithObjects:
                      [[Hidden alloc] initWithFrame: fr2Container.bounds],
                      [[Frog alloc] initWithFrame: fr2Container.bounds],
                      nil
                      ];
		frog2Index = 0;
        frog2Clicked = NO;
        [fr2Container addSubview: [frog2Views objectAtIndex: frog2Index]];
        [self addSubview: fr2Container];
        
        
        CGRect la1 = CGRectMake(100, h-300, 100, 100);
        UIView *la1Container = [[UIView alloc] initWithFrame: la1];
        lady1Views = [NSArray arrayWithObjects:
                     [[Hidden alloc] initWithFrame: la1Container.bounds],
                     [[Lady alloc] initWithFrame: la1Container.bounds],
                     nil
                     ];
		lady1Index = 0;
        lady1Clicked = NO;
        [la1Container addSubview: [lady1Views objectAtIndex: lady1Index]];
        [self addSubview: la1Container];
        
        CGRect la2 = CGRectMake(200, h-100, 100, 100);
        UIView *la2Container = [[UIView alloc] initWithFrame: la2];
        lady2Views = [NSArray arrayWithObjects:
                      [[Hidden alloc] initWithFrame: la2Container.bounds],
                      [[Lady alloc] initWithFrame: la2Container.bounds],
                      nil
                      ];
		lady2Index = 0;
		lady2Clicked = NO;
        [la2Container addSubview: [lady2Views objectAtIndex: lady2Index]];
        [self addSubview: la2Container];

        
        CGRect hi1 = CGRectMake(0, h-100, 100, 100);
        UIView *hi1Container = [[UIView alloc] initWithFrame: hi1];
        hippo1Views = [NSArray arrayWithObjects:
                     [[Hidden alloc] initWithFrame: hi1Container.bounds],
                     [[Hippo alloc] initWithFrame: hi1Container.bounds],
                     nil
                     ];
		hippo1Index = 0;
        hippo1Clicked = NO;
        [hi1Container addSubview: [hippo1Views objectAtIndex: hippo1Index]];
        [self addSubview: hi1Container];
        
        CGRect hi2 = CGRectMake(200, h-200, 100, 100);
        UIView *hi2Container = [[UIView alloc] initWithFrame: hi2];
        hippo2Views = [NSArray arrayWithObjects:
                       [[Hidden alloc] initWithFrame: hi2Container.bounds],
                       [[Hippo alloc] initWithFrame: hi2Container.bounds],
                       nil
                       ];
		hippo2Index = 0;
		hippo2Clicked = NO;
        [hi2Container addSubview: [hippo2Views objectAtIndex: hippo2Index]];
        [self addSubview: hi2Container];
        
        CGRect dy1 = CGRectMake(0, h-300, 100, 100);
        UIView *dy1Container = [[UIView alloc] initWithFrame: dy1];
        dylan1Views = [NSArray arrayWithObjects:
                     [[Hidden alloc] initWithFrame: dy1Container.bounds],
                     [[Dylan alloc] initWithFrame: dy1Container.bounds],
                     nil
                     ];
		dylan1Index = 0;
		dylan1Clicked = NO;
        [dy1Container addSubview: [dylan1Views objectAtIndex: dylan1Index]];
        [self addSubview: dy1Container];
        
        CGRect dy2 = CGRectMake(100, h-100, 100, 100);
        UIView *dy2Container = [[UIView alloc] initWithFrame: dy2];
        dylan2Views = [NSArray arrayWithObjects:
                       [[Hidden alloc] initWithFrame: dy2Container.bounds],
                       [[Dylan alloc] initWithFrame: dy2Container.bounds],
                       nil
                       ];
		dylan2Index = 0;
        dylan2Clicked = NO;
        [dy2Container addSubview: [dylan2Views objectAtIndex: dylan2Index]];
        [self addSubview: dy2Container];

        CGRect ap = CGRectMake(100, h-200, 100, 100);
        apple = [[Apple alloc] initWithFrame: ap];
        [self addSubview: apple];

        
    }
    return self;
}

- (void) frogMatchCheck
{
    if(frog1Clicked && frog2Clicked)
    {
        //do nothing, leave it in it's clicked state
    }
    else if(frog1Clicked)
    {
        frog1Clicked = NO;
        frog1NewIndex = 1 - frog1Index;
        [UIView transitionFromView: [frog1Views objectAtIndex: frog1Index]
                            toView: [frog1Views objectAtIndex: frog1NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        frog1Index = frog1NewIndex;
    }
    else if(frog2Clicked)
    {
        frog2Clicked = NO;
        frog2NewIndex = 1 - frog2Index;
        [UIView transitionFromView: [frog2Views objectAtIndex: frog2Index]
                            toView: [frog2Views objectAtIndex: frog2NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        frog2Index = frog2NewIndex;
    }
}
- (void) ladyMatchCheck
{
    if(lady1Clicked && lady2Clicked)
    {
        //do nothing, leave it in it's clicked state
    }
    else if(lady1Clicked)
    {
        lady1Clicked = NO;
        lady1NewIndex = 1 - lady1Index;
        [UIView transitionFromView: [lady1Views objectAtIndex: lady1Index]
                            toView: [lady1Views objectAtIndex: lady1NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        lady1Index = lady1NewIndex;
    }
    else if(lady2Clicked)
    {
        lady2Clicked = NO;
        lady2NewIndex = 1 - lady2Index;
        [UIView transitionFromView: [lady2Views objectAtIndex: lady2Index]
                            toView: [lady2Views objectAtIndex: lady2NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        lady2Index = lady2NewIndex;
    }
}
- (void) hippoMatchCheck
{
    if(hippo1Clicked && hippo2Clicked)
    {
        //do nothing, leave it in it's clicked state
    }
    else if(hippo1Clicked)
    {
        hippo1Clicked = NO;
        hippo1NewIndex = 1 - hippo1Index;
        [UIView transitionFromView: [hippo1Views objectAtIndex: hippo1Index]
                            toView: [hippo1Views objectAtIndex: hippo1NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        hippo1Index = hippo1NewIndex;
    }
    else if(hippo2Clicked)
    {
        hippo2Clicked = NO;
        hippo2NewIndex = 1 - hippo2Index;
        [UIView transitionFromView: [hippo2Views objectAtIndex: hippo2Index]
                            toView: [hippo2Views objectAtIndex: hippo2NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        hippo2Index = hippo2NewIndex;
    }
}

- (void) dylanMatchCheck
{
    if(dylan1Clicked && dylan2Clicked)
    {
        //do nothing, leave it in it's clicked state
    }
    else if(dylan1Clicked)
    {
        dylan1Clicked = NO;
        dylan1NewIndex = 1 - dylan1Index;
        [UIView transitionFromView: [dylan1Views objectAtIndex: dylan1Index]
                            toView: [dylan1Views objectAtIndex: dylan1NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        dylan1Index = dylan1NewIndex;
    }
    else if(dylan2Clicked)
    {
        dylan2Clicked = NO;
        dylan2NewIndex = 1 - dylan2Index;
        [UIView transitionFromView: [dylan2Views objectAtIndex: dylan2Index]
                            toView: [dylan2Views objectAtIndex: dylan2NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        dylan2Index = dylan2NewIndex;
    }
}


- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	
     CGFloat h = self.bounds.size.height;
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView: self];
    
    if ((point.x >= 200) && (point.x <=300) && (point.y >=h-300) && (point.y <= h-200))
    {
        frog1NewIndex = 1 - frog1Index;	//toggle the index
        
        if(!frog1Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
        frog1Clicked = YES;//set to the clicked state
        //transition from the question mark to the actual picture
        [UIView transitionFromView: [frog1Views objectAtIndex: frog1Index]
                            toView: [frog1Views objectAtIndex: frog1NewIndex]
                          duration: 0.5
                           options: UIViewAnimationOptionTransitionFlipFromLeft
                        completion: NULL
         
         ];
        
        frog1Index = frog1NewIndex;
        
        [self performSelector: @selector(frogMatchCheck) withObject: nil
                       afterDelay: 2.5];
    
        
        }
    }
    else if ((point.x >= 0 && point.x <=100) && (point.y >=h-200) && (point.y <= h-100))
    {
        frog2NewIndex = 1 - frog2Index;	//toggle the index
        
        if(!frog2Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            frog2Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [frog2Views objectAtIndex: frog2Index]
                                toView: [frog2Views objectAtIndex: frog2NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
        
            frog2Index = frog2NewIndex;
            
            [self performSelector: @selector(frogMatchCheck) withObject: nil
                       afterDelay: 2.5];
            
        }
    }
    else if ((point.x >= 100) && (point.x <= 200) && (point.y >=h-300) && (point.y <= h-200))
    {
        lady1NewIndex = 1 - lady1Index;	//toggle the index
        
        if(!lady1Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            lady1Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [lady1Views objectAtIndex: lady1Index]
                                toView: [lady1Views objectAtIndex: lady1NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
            
            lady1Index = lady1NewIndex;
            
            [self performSelector: @selector(ladyMatchCheck) withObject: nil
                       afterDelay: 2.5];
            
        }
    }
    else if ((point.x >= 200) && (point.x <=300) && (point.y >=h-100) && (point.y <= h))
    {
        lady2NewIndex = 1 - lady2Index;	//toggle the index
        
        if(!lady2Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            lady2Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [lady2Views objectAtIndex: lady2Index]
                                toView: [lady2Views objectAtIndex: lady2NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
            
            lady2Index = lady2NewIndex;
            
            [self performSelector: @selector(ladyMatchCheck) withObject: nil
                       afterDelay: 2.5];
            
        }
    }
    else if ((point.x >= 0) && (point.x <=100) && (point.y >=h-100) && (point.y <= h))
    {
        hippo1NewIndex = 1 - hippo1Index;	//toggle the index
        
        if(!hippo1Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            hippo1Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [hippo1Views objectAtIndex: hippo1Index]
                                toView: [hippo1Views objectAtIndex: hippo1NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
            
            hippo1Index = hippo1NewIndex;
            
            [self performSelector: @selector(hippoMatchCheck) withObject: nil
                       afterDelay: 2.5];
            
        }
    }
    else if ((point.x >= 200) && (point.x <=300) && (point.y >=h-200) && (point.y <= h-100))
    {
        hippo2NewIndex = 1 - hippo2Index;	//toggle the index
        
        if(!hippo2Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            hippo2Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [hippo2Views objectAtIndex: hippo2Index]
                                toView: [hippo2Views objectAtIndex: hippo2NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
            
            hippo2Index = hippo2NewIndex;
            
            [self performSelector: @selector(hippoMatchCheck) withObject: nil
                       afterDelay: 2.5];
            
        }
    }
    else if ((point.x >= 0) && (point.x <=100) && (point.y >=h-300) && (point.y <= h-200))
    {
        dylan1NewIndex = 1 - dylan1Index;	//toggle the index
        
        if(!dylan1Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            dylan1Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [dylan1Views objectAtIndex: dylan1Index]
                                toView: [dylan1Views objectAtIndex: dylan1NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
            
            dylan1Index = dylan1NewIndex;
            
            [self performSelector: @selector(dylanMatchCheck) withObject: nil
                       afterDelay: 2.5];
            
        }
    }
    else if ((point.x >= 100) && (point.x <= 200) && (point.y >= h-100) && (point.y <= h))
    {
        dylan2NewIndex = 1 - dylan2Index;	//toggle the index
        
        if(!dylan2Clicked) //only bother with all the logic below if it's NOT already in a clicked state
        {
            dylan2Clicked = YES;//set to the clicked state
            //transition from the question mark to the actual picture
            [UIView transitionFromView: [dylan2Views objectAtIndex: dylan2Index]
                                toView: [dylan2Views objectAtIndex: dylan2NewIndex]
                              duration: 0.5
                               options: UIViewAnimationOptionTransitionFlipFromLeft
                            completion: NULL
             
             ];
            
            dylan2Index = dylan2NewIndex;
            
            [self performSelector: @selector(dylanMatchCheck) withObject: nil
                       afterDelay: 2.5];
        }
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