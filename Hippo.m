//
//  Hippo.m
//  Mar14
//
//  Created by Christopher J Di Luccia on 3/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "Hippo.h"

@implementation Hippo

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    UIImage *image = [UIImage imageNamed: @"hippo.png"];
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    CGPoint point = CGPointMake(0,0);
    
    [image drawAtPoint: point];
}

@end
