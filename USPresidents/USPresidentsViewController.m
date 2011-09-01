//
//  USPresidentsViewController.m
//  USPresidents
//
//  Created by Lisa Ridley on 8/31/11.
//  Copyright 2011 RoveWorks. All rights reserved.
//

#import "USPresidentsViewController.h"
#import "Presidents.h"

@implementation USPresidentsViewController
@synthesize presidents;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    Presidents *prezs = [[Presidents alloc] init];
    self.presidents = prezs;

    NSArray *pi = [[NSArray alloc]initWithArray:prezs.presInfo];
    [prezs release];
    NSInteger cnt = [pi count];
    NSLog(@"Count of presidents:%i", [pi count]);

    for(int x = 0; x < cnt; x++) {
        NSLog(@"President Name: %@", [[pi objectAtIndex:x] objectForKey:@"name"]);
    }
    
/**    for (NSDictionary *element in pi) {
        NSLog(@"President: %@", [element objectForKey:@"name"]);
    }
**/
    [pi release];

    [super viewDidLoad];
}


- (void)viewDidUnload
{
    self.presidents = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) dealloc {
    [presidents release];
    [super dealloc];
}
@end
