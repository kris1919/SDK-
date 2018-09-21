//
//  BXCLog.m
//  BXNetworking
//
//  Created by tsfa on 2018/9/20.
//  Copyright © 2018年 Marco. All rights reserved.
//

#import "BXCLog.h"

@implementation BXCLog

+ (void)bxcLog{
    NSLog(@"%s--%d--%@",__FUNCTION__,__LINE__,@"ss");
}

@end
