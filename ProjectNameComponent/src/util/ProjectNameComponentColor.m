//
//  ProjectNameComponentColor.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import "ProjectNameComponentColor.h"
#import "ProjectNameComponentConst+Private.h"

#import <MUPAssetsKit/MUPAssetsKit.h>

@implementation ProjectNameComponentColor

+ (UIColor *)colorWithKey:(NSString *)key {
    
    return [MUPSkin colorWithKey:key componentID:ProjectNameComponentIDKey];
}

@end
