//
//  ProjectNameComponent+Class.m
//  ProjectNameComponent
//
//  Created by mac on 2020/8/28.
//  Copyright © 2020 MrTank. All rights reserved.
//

#import <ProjectNameComponent/ProjectNameComponent+Class.h>
#import "ProjectNameComponentViewController.h"
#import "ProjectNameComponentConst+Private.h"
#import "ProjectNameComponentEnvironment.h"

#import <APFKit/APFKit.h>

@implementation ProjectNameComponent

- (void)onInit {

    id<APFConfigBeanProtocol> configBeanManager = [[APFConfigManager sharedManager] getServiceConfigBeanWithConfigId:ProjectNameComponentIDKey];
    NSString *host = [[configBeanManager getPropertyWithKey:@"domain_host"] toString];
    
    [ProjectNameComponentEnvironment setCurrentEnvironment:host];
}

- (void)afterInit {

}

- (void)logInEventAsync:(NSDictionary *)param {

}

- (void)logInEvent:(NSDictionary *)param {

}

- (void)goPage:(NSDictionary *)context uri:(APFPageUri *)uri {
    MUPLogDebug(@"goPage:uri: %@", uri);

    APFPageWrapper *pageWrapper = [self getPage:uri];
    if (!pageWrapper || ![pageWrapper getController]) {
        return;
    }

    if ([[uri getUrlWithoutParameters] isEqualToString:ProjectNameComponentMainViewController]) {
        ProjectNameComponentViewController *vc = (ProjectNameComponentViewController *)[pageWrapper getController];

        UIViewController *sourceViewController = context[KEY_CMP_SRC_CONTROLLER];

        ProjectNameComponentViewController *targetVC = (ProjectNameComponentViewController *)[self searchTargetViewController:[ProjectNameComponentViewController class] fromNavigation:sourceViewController.navigationController];
        if (targetVC) {
            [sourceViewController.navigationController popToViewController:targetVC animated:YES];
        } else {
            [sourceViewController.navigationController pushViewController:vc animated:YES];
        }
    }
}

- (void)goPage:(NSDictionary *)context uri:(APFPageUri *)uri result:(APFGoPageResultCallBack)cb {

    APFPageWrapper *pageWrapper = [self getPage:uri];
    if (!pageWrapper || ![pageWrapper getController]) {
        return;
    }
    if([[uri getUrlWithoutParameters] isEqualToString:(NSString *)ProjectNameComponentMainViewController]) {
        ProjectNameComponentViewController *vc = (ProjectNameComponentViewController *)[pageWrapper getController];
        UIViewController *sourceViewController = context[KEY_CMP_SRC_CONTROLLER];
        vc.hidesBottomBarWhenPushed = YES;
        if (cb) {
            vc.apf_goPageCallBack = cb;
        }
        [sourceViewController.navigationController pushViewController:vc animated:YES];
    }
    [super goPage:context uri:uri result:cb];
}

- (APFPageWrapper *)getPage:(APFPageUri *)page {
    if (!page) {
        return nil;
    }
    MUPLogDebug(@"getPage %@", page.url);
    if (![[page getProtocol] isEqualToString:(NSString *)KEY_COMPONENT_MANAGER]) {
        return nil;
    }

    if ([[page getUrlWithoutParameters] isEqualToString:(NSString *)ProjectNameComponentMainViewController]) {

        ProjectNameComponentViewController *vc = [[ProjectNameComponentViewController alloc] init];

        return [[APFPageWrapper alloc] initWithController:vc];
    }
    
    return nil;
}

#pragma mark - Private
- (UIViewController *)searchTargetViewController:(Class)targetClass fromNavigation:(UINavigationController *)navigationController {

    NSArray *array = [navigationController viewControllers];
    __block UIViewController *targetVc = nil;
    [array enumerateObjectsUsingBlock:^(UIViewController *vc, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([vc isKindOfClass:targetClass]) {
            targetVc = vc;
            *stop = YES;
        }
    }];

    return targetVc;
}

@end
