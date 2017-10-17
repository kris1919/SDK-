//
//  NSString+SL.m
//  StaticLibrary
//
//  Created by krisyuhao on 2017/9/30.
//  Copyright © 2017年 krisyuhao. All rights reserved.
//

#import "NSString+SL.h"

@implementation NSString (SL)

+ (NSString *)appendStr:(NSString *)str :(NSString *)anotherStr{
    return [str stringByAppendingString:anotherStr];
}

@end
