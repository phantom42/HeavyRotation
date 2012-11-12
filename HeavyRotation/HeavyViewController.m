//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Joe Coleman on 10/29/12.
//  Copyright (c) 2012 Joe Coleman. All rights reserved.
//

#import "HeavyViewController.h"

@interface HeavyViewController ()

@end

@implementation HeavyViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    return (x == UIInterfaceOrientationPortrait)
        || UIInterfaceOrientationIsLandscape(x) ;
}
- (void)viewDidLoad
{
    [image setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight] ;
    [slider setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin] ;
    [button1 setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin] ;
    [button2 setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin] ;
}

@end
