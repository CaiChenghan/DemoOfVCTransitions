//
//  MyNavigationController.h
//  DemoOfVCTransitions
//
//  Created by 蔡成汉 on 15/3/2.
//  Copyright (c) 2015年 JW. All rights reserved.
//

/**
 *  重写的NavigationController，主要是为了支持多视图跳转方式。
 *  视图跳转方式的核心主要为对NavigationController视图跳转方法的重写。
 *  重写的内容为对UIViewControllerAnimatedTransitioning的重写。
 *  用于重写MyNavigationController的时候使用了self.delegate = self，所以外部再进行设置UINavigationControllerDelegate的时候就会导致内部重写方法无效，使用的时候需要注意。
 *  如果外部需要用到UINavigationControllerDelegate的方法，可以新写一个delegate，将UINavigationControllerDelegate传递到外部。
 *  同时还有一个有意思的东西，就是跳转动画的设计，这个估计有些麻烦，不过琢磨一下应该不难。
 */

#import <UIKit/UIKit.h>
#import "ShuffleAnimation.h"

/**
 *  视图跳转类型
 */
typedef NS_ENUM(NSInteger, TransitionType){
    /**
     *  默认类型 -- 系统自带的
     */
    TransitionTypeDefault,
    
    /**
     *  洗牌效果
     */
    TransitionTypeShuffle
};

@interface MyNavigationController : UINavigationController

/**
 *  视图跳转类型
 */
@property (nonatomic , assign) TransitionType transitionType;

@end
