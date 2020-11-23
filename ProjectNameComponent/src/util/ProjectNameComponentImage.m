//
//  ProjectNameComponentImage.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import "ProjectNameComponentImage.h"
#import "ProjectNameComponentConst+Private.h"

#import <MUPAssetsKit/MUPAssetsKit.h>

@implementation ProjectNameComponentImage

+ (UIImage *)imageNamed:(NSString *)name {
    
    return [MUPSkin imageNamed:name componentID:ProjectNameComponentIDKey];
}

@end
