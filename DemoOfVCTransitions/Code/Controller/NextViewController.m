//
//  NextViewController.m
//  DemoOfVCTransitions
//
//  Created by 蔡成汉 on 15/3/2.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"NextViewController";
    
    UIImageView *myImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    myImageView.image = [UIImage imageNamed:@"2.jpg"];
    myImageView.contentMode = UIViewContentModeScaleAspectFill;
    myImageView.layer.masksToBounds = YES;
    [self.view addSubview:myImageView];
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
