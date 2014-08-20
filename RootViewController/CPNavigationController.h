//
//  CPNavigationController.h
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPNavigationController : UINavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController action:(SEL)action hidesBackButton:(BOOL) hidden ;

@end
