//
//  ProjectNameComponentHelper.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import "ProjectNameComponentHelper.h"
#import "ProjectNameComponentConst+Private.h"

#import <APFKit/APFKit.h>
#import <MUPAssetsKit/MUPAssetsKit.h>

NSBundle *projectComponent_resourceBundle(Class class) {
    static NSBundle *NDUCComponentBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NDUCComponentBundle = [NSBundle bundleForClass:class];
        if (NDUCComponentBundle) {
            NSString *resourceBundlePath = [NDUCComponentBundle pathForResource:ProjectNameComponentBundleKey ofType:@"bundle"];
            if (resourceBundlePath && [[NSFileManager defaultManager] fileExistsAtPath:resourceBundlePath]) {
                NDUCComponentBundle = [NSBundle bundleWithPath:resourceBundlePath];
            }
        }
    });
    return NDUCComponentBundle;
}

@implementation ProjectNameComponentHelper

+ (NSString *)localizedStringForKey:(NSString *)key {
    if ([NSString mup_stringIsEmpty:key]) {
        return nil;
    }

    NSString *text = [MUPI18nManager localizedStringWithKey:key componentID:ProjectNameComponentIDKey];
    if (text && ![text isEqualToString:key]) {
        return text;
    }
    
    return [projectComponent_resourceBundle([self class]) localizedStringForKey:(key) value:@"" table:nil];
}

@end
