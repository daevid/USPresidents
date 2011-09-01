//
//  USPresidentsViewController.h
//  USPresidents
//
//  Created by Lisa Ridley on 8/31/11.
//  Copyright 2011 RoveWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Presidents;

@interface USPresidentsViewController : UIViewController {
    Presidents *presidents;
}
@property (nonatomic, retain) Presidents *presidents;

@end
