//
//  BXCNetWorkingManager.h
//  BXNetworking
//
//  Created by tsfa on 2018/9/20.
//  Copyright © 2018年 Marco. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BXCNetWorkingManager : NSObject

+ (nullable NSURLSessionDataTask *)POST:(nonnull NSString *)urlStr parameters:(nullable id)parameters success:(void(^)(NSURLSessionDataTask * _Nonnull task,id _Nullable responseObject))success failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
