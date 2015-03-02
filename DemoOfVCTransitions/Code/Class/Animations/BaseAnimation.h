//
//  BaseAnimation.h
//  DemoOfVCTransitions
//
//  Created by 蔡成汉 on 15/3/2.
//  Copyright (c) 2015年 JW. All rights reserved.
//

/**
 视图跳转的父类
 定义了一个跳转类型（推进、推出）
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    /**
     *  Pressent -- 推进
     */
    AnimationTypePressent,
    
    /**
     *  Dismiss -- 推出
     */
    AnimationTypeDismiss
}AnimationType;

@interface BaseAnimation : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic , assign) AnimationType type;

@end
