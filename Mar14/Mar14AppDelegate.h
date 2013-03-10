//
//  Mar14AppDelegate.h
//  Mar14
//
//  Created by Christopher J Di Luccia on 3/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>  //needed for AVAudioPlayer
@class View;

@interface Mar14AppDelegate: UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;
@end
