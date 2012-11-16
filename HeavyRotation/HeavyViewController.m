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
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toFace
                                         duration:(NSTimeInterval)duration
{
    CGRect bounds = [[self view] bounds] ;
    CGRect magicButtonBounds = [magicButton bounds] ;
    int heightOffset = magicButtonBounds.size.height * 1.25 ;
    CGPoint button1Coords = [button1 center] ;
    NSLog(@"xx: %d",UIInterfaceOrientationIsPortrait(toFace));
    if (UIInterfaceOrientationIsPortrait(toFace))
    {
        [magicButton setCenter:CGPointMake(button1Coords.x, button1Coords.y - heightOffset)];
    } else {
        [magicButton setCenter:CGPointMake(bounds.size.width - button1Coords.x, button1Coords.y - heightOffset)] ;
    }
    
}


@end
