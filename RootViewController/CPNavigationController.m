//
//  CPNavigationController.m
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPNavigationController.h"

@interface CPNavigationController ()
{
    BOOL _hidesBackButton;
}

@end

@implementation CPNavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController hidesBackButton:(BOOL) hidden
{
    
    _hidesBackButton = hidden;
    self.navigationItem.hidesBackButton = _hidesBackButton;
    return  [super initWithRootViewController:rootViewController];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated action:(NAV_ACTION)action
{
    [super pushViewController:viewController animated:animated];
    
    if (_hidesBackButton && [self.viewControllers count] > 1)
    {
        viewController.navigationItem.leftBarButtonItem = [self createBackButton:action];
    }
}

- (UIBarButtonItem *)createBackButton:(NAV_ACTION)action
{
    UIBarButtonItem *backBtn;
    switch (action) {
        case NAV_ACTION_POPSELF:
            backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStyleDone target:self action:@selector(popSelf:)];
            break;
        case NAV_ACTION_TOROOTVIEW:
            backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStyleDone target:self action:@selector(popToRootVC:)];
            break;
        default:
            break;
    }
    
    
    return backBtn;
}

- (IBAction)popSelf:(id)sender
{
    [self popViewControllerAnimated:YES];
}

- (IBAction)popToRootVC:(id)sender
{
    [self popToRootViewControllerAnimated:YES];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
