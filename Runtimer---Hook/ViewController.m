//
//  ViewController.m
//  Runtimer---Hook
//
//  Created by 苹果电脑 on 2017/11/8.
//  Copyright © 2017年 ShaoPengLiu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //当url中出现中文，URL就为空了，此时就会报错。为了解决这种问题，我们可以用runtimer机制来动态的改变类方法
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com中文"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSLog(@"%@", request);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
