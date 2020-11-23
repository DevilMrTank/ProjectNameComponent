//
//  ProjectNameComponentHelper.h
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSBundle *projectComponent_resourceBundle(Class class);

#define ProjectNameComponentLocalizedString(key) \
[ProjectNameComponentHelper localizedStringForKey:key]

@interface ProjectNameComponentHelper : NSObject

#pragma mark -
+ (NSString *)localizedStringForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
