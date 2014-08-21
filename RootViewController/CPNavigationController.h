//
//  CPNavigationController.h
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import <UIKit/UIKit.h>

//最好的方式还是交给对应的VC来实现backBtn

typedef enum
{
    NAV_ACTION_POPSELF = 0,
    NAV_ACTION_TOROOTVIEW
}NAV_ACTION;

@interface CPNavigationController : UINavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController hidesBackButton:(BOOL) hidden ;

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated action:(NAV_ACTION)action;

@end
