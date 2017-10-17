//
//  NSString+SF.m
//  StaticFramework
//
//  Created by krisyuhao on 2017/9/30.
//  Copyright © 2017年 krisyuhao. All rights reserved.
//

#import "NSString+SF.h"

@implementation NSString (SF)

+ (NSString *)appendStr:(NSString *)str anotherString:(NSString *)anotherString{
    return [str stringByAppendingString:anotherString];
}

@end
