//
//  BXCNetWorkingManager.m
//  BXNetworking
//
//  Created by tsfa on 2018/9/20.
//  Copyright © 2018年 Marco. All rights reserved.
//

#import "BXCNetWorkingManager.h"
#import "AFNetworking/BXNetworking.h"

@implementation BXCNetWorkingManager

+ (nullable NSURLSessionDataTask *)POST:(nonnull NSString *)urlStr parameters:(nullable id)parameters success:(void(^)(NSURLSessionDataTask * _Nonnull task,id _Nullable responseObject))success failure:(void(^)(NSError *error))failure{
    return [[BXHTTPSessionManager manager] POST:urlStr parameters:parameters headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(task,responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end
