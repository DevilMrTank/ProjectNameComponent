//
//  ProjectNameComponentFont.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import "ProjectNameComponentFont.h"
#import "ProjectNameComponentConst+Private.h"

#import <MUPAssetsKit/MUPAssetsKit.h>

@implementation ProjectNameComponentFont

+ (UIFont *)fontWithKey:(NSString *)key {
    
    return [MUPSkin fontWithKey:key componentID:ProjectNameComponentIDKey];
//    return [APFSkin fontWithKey:key componentID:UCCStringComponentIDKey];
}

@end
