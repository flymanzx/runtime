//
//  NSObject+CrashLogHandle.m
//  runtime
//
//  Created by zhangxin on 2019/1/8.
//  Copyright © 2019年 zhangxin. All rights reserved.
//

#import "NSObject+CrashLogHandle.h"

@implementation NSObject (CrashLogHandle)


- (void)forwardInvocation:(NSInvocation *)anInvocation {
    #ifdef DEBUG
    NSLog(@"NSObject+CrashLogHandle---在类:%@中 未实现该方法:%@",NSStringFromClass([anInvocation.target class]),NSStringFromSelector(anInvocation.selector));
    #else
       NSLog(@"NSObject+CrashLogHandle---在类:%@中 未实现该方法:%@",NSStringFromClass([anInvocation.target class]),NSStringFromSelector(anInvocation.selector));
    #endif
}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature signatureWithObjCTypes:"v@:@"];
}





@end
