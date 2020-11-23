//
//  ProjectNameComponentEnvironment.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import "ProjectNameComponentEnvironment.h"

#import <MUPFoundationUtils/MUPFoundationUtils.h>

NSString const *ProjectNameComponentBaseURLKey = nil;

@implementation ProjectNameComponentEnvironment

+ (void)setCurrentEnvironment:(NSString *)host {
    
    ProjectNameComponentBaseURLKey = host;
}


@end
