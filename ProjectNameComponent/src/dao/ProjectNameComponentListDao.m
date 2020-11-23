//
//  ProjectNameComponentListDao.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import "ProjectNameComponentListDao.h"
#import "ProjectNameComponentEnvironment.h"

@implementation ProjectNameComponentListDao

- (NSString *)resourceURI {
    return [NSString stringWithFormat:@"%@/index", ProjectNameComponentBaseURLKey];
}

@end
