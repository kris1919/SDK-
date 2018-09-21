//
//  ViewController.m
//  BXCEvaluateDemo
//
//  Created by tsfa on 2018/9/20.
//  Copyright © 2018年 Marco. All rights reserved.
//

#import "ViewController.h"
#import <BXCNetWorkingManager.h>
#import <BXCLog.h>
#import <AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self requestSDK];
    [self requestAFNetworking];
}

- (void)requestSDK{
    [BXCNetWorkingManager POST:@"http://m.weather.com.cn/data/101010100.html" parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%s--%d--%@",__FUNCTION__,__LINE__,responseObject);
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"%s--%d--%@",__FUNCTION__,__LINE__,error);
    }];
    
    [BXCLog bxcLog];
}

- (void)requestAFNetworking{
    [[AFHTTPSessionManager manager] POST:@"www.baidu.com" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%s--%d--%@",__FUNCTION__,__LINE__,responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

    }];
}


@end
