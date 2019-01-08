//
//  ViewController.m
//  runtime
//
//  Created by zhangxin on 2019/1/8.
//  Copyright © 2019年 zhangxin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Test2ViewController";
    
    //实例化一个button,未实现其方法
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 100, 200, 100);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"消息转发" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(doSomething)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    // Do any additional setup after loading the view, typically from a nib.
}


@end
