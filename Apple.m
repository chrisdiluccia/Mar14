//
//  Apple.m
//  Mar14
//
//  Created by Christopher J Di Luccia on 3/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "Apple.h"

@implementation Apple

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
    
    UIImage *image = [UIImage imageNamed: @"apple.png"];
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    CGPoint point = CGPointMake(0,0);
    
    [image drawAtPoint: point];
}

@end