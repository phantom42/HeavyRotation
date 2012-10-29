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
    // return YES if incoming orienation is portrait
    // or either of hte landscapes. otherwise, return NO
    return (x == UIInterfaceOrientationPortrait)
    || UIInterfaceOrientationIsLandscape(x) ;
}

@end
