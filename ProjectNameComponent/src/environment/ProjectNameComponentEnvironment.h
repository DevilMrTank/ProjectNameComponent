//
//  ProjectNameComponentEnvironment.h
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *    UC1.1服务器地址
 */
FOUNDATION_EXTERN NSString const * ProjectNameComponentBaseURLKey;

@interface ProjectNameComponentEnvironment : NSObject

/**
 *    @param host 需要设定的服务地址
 */
+ (void)setCurrentEnvironment:(NSString *)host;

@end

NS_ASSUME_NONNULL_END
