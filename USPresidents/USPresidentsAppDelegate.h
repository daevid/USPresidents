//
//  USPresidentsAppDelegate.h
//  USPresidents
//
//  Created by Lisa Ridley on 8/31/11.
//  Copyright 2011 RoveWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@class USPresidentsViewController;

@interface USPresidentsAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet USPresidentsViewController *viewController;

@end
