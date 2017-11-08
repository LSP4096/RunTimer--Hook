//
//  NSURL+SP_URL_Hook.m
//  Runtimer---Hook
//
//  Created by 苹果电脑 on 2017/11/8.
//  Copyright © 2017年 ShaoPengLiu. All rights reserved.
//

#import "NSURL+SP_URL_Hook.h"
#import <objc/message.h>

@implementation NSURL (SP_URL_Hook)

+ (void)load {
    //下钩子
    //class_getClassMethod   获取类方法
    //class_getInstanceMetnod 获取对象方法

    Method method_Url = class_getClassMethod(self, @selector(URLWithString:));
    Method method_SPURL = class_getClassMethod(self, @selector(SP_URLWithString:));
    
    method_exchangeImplementations(method_Url, method_SPURL);
}

//hook 交换方法的IMP
+ (instancetype)SP_URLWithString:(NSString *)URLString {
    NSURL *url = [NSURL SP_URLWithString:URLString];
    if (url == nil) {
        NSLog(@"URL为空");
    }
    return url;
}

@end
