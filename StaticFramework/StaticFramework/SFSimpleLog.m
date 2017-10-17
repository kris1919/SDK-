//
//  SFSimpleLog.m
//  StaticFramework
//
//  Created by krisyuhao on 2017/9/30.
//  Copyright © 2017年 krisyuhao. All rights reserved.
//

#import "SFSimpleLog.h"
#import "NSString+SF.h"

@implementation SFSimpleLog
+ (void)consoleString:(NSString *)string{
    NSLog(@"%@",string);
    
    NSString *resultsStr = [NSString appendStr:@"kris" anotherString:@"yuhao"];
    NSLog(@"%@",resultsStr);
    
}

@end
