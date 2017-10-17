//
//  SLSimpleModel.m
//  StaticLibrary
//
//  Created by krisyuhao on 2017/9/30.
//  Copyright © 2017年 krisyuhao. All rights reserved.
//

#import "SLSimpleModel.h"
#import "NSString+SL.h"

@implementation SLSimpleModel

+ (void)consoleString:(NSString *)string{
    NSLog(@"%@",string);
    
    NSLog(@"可以调试");
    
    NSLog(@"%@",@"相对路径可以调试");
    
    NSLog(@"绝对路径可以调试");
    
    NSLog(@"引用 可以调试");
    
    NSLog(@"只要工程加入target 就可以调试");
    
    NSLog(@"不加入target  默认寻找与静态库名字一样的target去编译");
    
    NSLog(@"调试的时候,引用到静态库,静态库会被重新编译一次,但是不会走shell脚本");
    
    NSLog(@"\n\n.a文件中包含了 category 之后");
    NSString *results = [NSString appendStr:@"只要工程编译方式加上" :@"-ObjC 就可以编译"];
    NSLog(@"%@",results);
    
}

@end
