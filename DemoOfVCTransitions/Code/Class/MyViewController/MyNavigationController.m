//
//  MyNavigationController.m
//  DemoOfVCTransitions
//
//  Created by 蔡成汉 on 15/3/2.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "MyNavigationController.h"

@interface MyNavigationController ()<UINavigationControllerDelegate>

@end

@implementation MyNavigationController

-(id)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [super initWithRootViewController:rootViewController];
    if (self)
    {
        //设置默认值
        self.transitionType = TransitionTypeDefault;
        self.delegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UINavigationControllerDelegate

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
{
    BaseAnimation *animation;
    
    //动画类的选择 -- 子类执行
    if (self.transitionType == TransitionTypeShuffle)
    {
        ShuffleAnimation *shuffleAnimation = [[ShuffleAnimation alloc]init];
        animation = shuffleAnimation;
    }
    
    //判断Pressent还是Dismiss
    if (operation == UINavigationControllerOperationPush)
    {
        animation.type = AnimationTypePressent;
    }
    else
    {
        animation.type = AnimationTypeDismiss;
    }
    return animation;
}

-(id<UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController
{
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
