//
//  BaseAnimation.m
//  DemoOfVCTransitions
//
//  Created by 蔡成汉 on 15/3/2.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "BaseAnimation.h"

@implementation BaseAnimation

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
}

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 1.0;
}

-(void)handlePinch:(UIPinchGestureRecognizer *)pinch
{
    
}

@end
